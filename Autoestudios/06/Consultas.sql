--1.Los anexos de un incidente especifico (se consulta por referencia)
SELECT x.url
FROM issue i, XMLTable('/issue/anexos/url' 
                      passing i.info
                      columns url varchar2(200) path '.') x
WHERE i.CALL_REF = 1237;
--2. Los incidentes que han reportado mayor costo diario (mayor o igual a un millon)
SELECT dbms_xmlgen.getxmltype(
  'SELECT * FROM issue WHERE to_number(extractvalue(info, ''/issue/costo'')) >= 1000000'
) AS high_cost_issues
FROM dual;
--3. Los tipos de servicio que figuran en los incidentes
SELECT x.type, count(*) as num_issues
FROM issue i, XMLTable('/issue/type' 
                      passing i.info
                      columns type varchar2(50) path '.') x
GROUP BY x.type;
--4.Obtener una lista de todos los tickets que tengan la prioridad "alta" y su solucion incluya la palabra "reemplazo".
SELECT CALL_REF, detail, solution
FROM issue
WHERE dbms_xmlgen.getxmltype(info).extract('/issue/priority/text()').getStringVal() = 'alta'
AND dbms_xmlgen.getxmltype(info).extract('/issue/solution_description/text()').getStringVal() LIKE '%reemplazo%'
--5.Obtener una lista de los tickets agrupados por tipo de servicio y su costo total.
SELECT 
  type, 
  SUM(dbms_xmlgen.getxmltype(info).extract('/issue/costo/text()').getNumberVal()) as costo_total 
FROM issue
GROUP BY type

