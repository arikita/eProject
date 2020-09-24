<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <title>Spring MVC Example</title>
    </head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dom-to-image/2.6.0/dom-to-image.min.js"
    integrity="sha256-c9vxcXyAG4paArQG3xk6DjyW/9aHxai2ef9RpMWO44A=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
    <body id="content">

        <h1>Welcome to Spring MVC</h1>
        Language :
        <a href="?language=en">English</a>|
        <a href="?language=vi_VN">Viet Nam</a>|
        <a href="?language=fr_FR">France</a>
        <h2>hello :  <spring:message code="hello" text="default text" /></h2>

        Current Locale : ${pageContext.response.locale}

        <table id="buihai" class="table2Excel table table-light">
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Price</th>
            </tr>
            <c:forEach items="${books}" var="b">
                <tr>
                    <td>${b.id}</td>
                    <td>${b.title}</td>
                    <td>${b.price}</td>

                </tr>
            </c:forEach>
            <tr>
                <td></td>
                <td>Total</td>
                <td>9999999</td>

            </tr>
        </table>
        <hr>

        <table id="tbl2" class="table2Excel ">
            <tr>
                <td>Product</td>
                <td>Price</td>
                <td>Available</td>
                <td>Count</td>
            </tr>
            <tr>
                <td>Bred</td>
                <td>7</td>
                <td>8</td>
                <td>9</td>
            </tr>
            <tr>
                <td>Butter</td>
                <td>14</td>
                <td>15</td>
                <td >16</td>
            </tr>
        </table>


        <button  onclick="tablesToExcel(['buihai'], ['ProductDay1'], 'TestBook.xls', 'Excel')">Export to Excel</button>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>

        <div id="content2" style="background: #fff;border-bottom: 1px solid #ffffff;">
            <div class="tokenDet" style="padding: 15px;border: 1px solid #000;width: 80%;margin: 0 auto;position: relative;overflow: hidden;">
                <div class="title" style="text-align: center;border-bottom: 1px solid #000;margin-bottom: 15px;">
                    <h2>Entrance Exam Hall Ticket</h2>
                </div>
                <div class="parentdiv" style="display: inline-block;width: 100%;position: relative;">
                    <div class="innerdiv" style="width: 80%;float: left;">
                        <div class="restDet">
                            <div class="div">
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Santanu Patra</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>D.O.B.</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>17th April, 1995</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Address</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>P.S. Srijan Corporate Park, Saltlake, Sector 5, Kolkata-91</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Contact Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>9874563210</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Email Id</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>santanu@macallied.com</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Parent(s) Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>S. Patra</span><br /><span>7896541230</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Exam Center</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Institute of Engineering & Management</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Hall Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>COM-32</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sideDiv" style="width: 20%;float: left;">
                        <div class="atts" style="float: left;width: 100%;">
                            <div class="photo" style="width: 115px;height: 150px;float: right;">
                                <img src="${links}/images/adminnguyenhai.jpg" style="width: 100%;"/>
                            </div>
                            <div class="sign" style="position: absolute;bottom: 0;right: 0;border-top: 1px dashed #000;left: 80%;text-align: right;">
                                <small>Self Attested</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="parentdiv" style="display: inline-block;width: 100%;position: relative;">
                    <div class="innerdiv" style="width: 80%;float: left;">
                        <div class="restDet">
                            <div class="div">
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Santanu Patra</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>D.O.B.</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>17th April, 1995</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Address</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>P.S. Srijan Corporate Park, Saltlake, Sector 5, Kolkata-91</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Contact Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>9874563210</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Email Id</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>santanu@macallied.com</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Parent(s) Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>S. Patra</span><br /><span>7896541230</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Exam Center</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Institute of Engineering & Management</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Hall Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>COM-32</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sideDiv" style="width: 20%;float: left;">
                        <div class="atts" style="float: left;width: 100%;">
                            <div class="photo" style="width: 115px;height: 150px;float: right;">
                                <img src="${links}/images/adminnguyenhai.jpg" style="width: 100%;"/>
                            </div>
                            <div class="sign" style="position: absolute;bottom: 0;right: 0;border-top: 1px dashed #000;left: 80%;text-align: right;">
                                <small>Self Attested</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="parentdiv" style="display: inline-block;width: 100%;position: relative;">
                    <div class="innerdiv" style="width: 80%;float: left;">
                        <div class="restDet">
                            <div class="div">
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Santanu Patra</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>D.O.B.</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>17th April, 1995</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Address</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>P.S. Srijan Corporate Park, Saltlake, Sector 5, Kolkata-91</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Contact Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>9874563210</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Email Id</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>santanu@macallied.com</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Parent(s) Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>S. Patra</span><br /><span>7896541230</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Exam Center</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Institute of Engineering & Management</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Hall Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>COM-32</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sideDiv" style="width: 20%;float: left;">
                        <div class="atts" style="float: left;width: 100%;">
                            <div class="photo" style="width: 115px;height: 150px;float: right;">
                                <img src="${links}/images/adminnguyenhai.jpg" style="width: 100%;"/>
                            </div>
                            <div class="sign" style="position: absolute;bottom: 0;right: 0;border-top: 1px dashed #000;left: 80%;text-align: right;">
                                <small>Self Attested</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="parentdiv" style="display: inline-block;width: 100%;position: relative;">
                    <div class="innerdiv" style="width: 80%;float: left;">
                        <div class="restDet">
                            <div class="div">
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Santanu Patra</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>D.O.B.</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>17th April, 1995</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Address</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>P.S. Srijan Corporate Park, Saltlake, Sector 5, Kolkata-91</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Contact Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>9874563210</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Email Id</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>santanu@macallied.com</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Parent(s) Name</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>S. Patra</span><br /><span>7896541230</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Exam Center</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>Institute of Engineering & Management</span>
                                </div>
                                <div class="label" style="width: 30%;float: left;">
                                    <strong>Hall Number</strong>
                                </div>
                                <div class="data" style="width: 70%;display: inline-block;">
                                    <span>COM-32</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sideDiv" style="width: 20%;float: left;">
                        <div class="atts" style="float: left;width: 100%;">
                            <div class="photo" style="width: 115px;height: 150px;float: right;">
                                <img src="${links}/images/adminnguyenhai.jpg" style="width: 100%;"/>
                            </div>
                            <div class="sign" style="position: absolute;bottom: 0;right: 0;border-top: 1px dashed #000;left: 80%;text-align: right;">
                                <small>Self Attested</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <button class="btn btn-info" id="cmd2">Download Token</button>

        <script>
            //pdf export
            $('#cmd2').click(function () {
                domtoimage.toPng(document.getElementById('content2'))
                        .then(function (blob) {
                            var pdf = new jsPDF('l', 'pt', [$('#content2').width(), $('#content2').height()]);

                            pdf.addImage(blob, 'PNG', 0, 0, $('#content2').width(), $('#content2').height());
                            pdf.save("test.pdf");

                            that.options.api.optionsChanged();
                        });

            });
            // This code is collected but useful, click below to jsfiddle link.
            //exel export
            var tablesToExcel = (function () {
                var uri = 'data:application/vnd.ms-Excel;base64,'
                        , tmplWorkbookXML = '<?xml version="1.0"?><?mso-application progid="Excel.Sheet"?><Workbook xmlns="urn:schemas-Microsoft-com:office:spreadsheet" xmlns:ss="urn:schemas-Microsoft-com:office:spreadsheet">'
                        + '<DocumentProperties xmlns="urn:schemas-Microsoft-com:office:office"><Author>Axel Richter</Author><Created>{created}</Created></DocumentProperties>'
                        + '<Styles>'
                        + '<Style ss:ID="Currency"><NumberFormat ss:Format="Currency"></NumberFormat></Style>'
                        + '<Style ss:ID="Date"><NumberFormat ss:Format="Medium Date"></NumberFormat></Style>'
                        + '</Styles>'
                        + '{worksheets}</Workbook>'
                        , tmplWorksheetXML = '<Worksheet ss:Name="{nameWS}"><Table>{rows}</Table></Worksheet>'
                        , tmplCellXML = '<Cell{attributeStyleID}{attributeFormula}><Data ss:Type="{nameType}">{data}</Data></Cell>'
                        , base64 = function (s) {
                            return window.btoa(unescape(encodeURIComponent(s)))
                        }
                , format = function (s, c) {
                    return s.replace(/{(\w+)}/g, function (m, p) {
                        return c[p];
                    })
                }
                return function (tables, wsnames, wbname, appname) {
                    var ctx = "";
                    var workbookXML = "";
                    var worksheetsXML = "";
                    var rowsXML = "";

                    for (var i = 0; i < tables.length; i++) {
                        if (!tables[i].nodeType)
                            tables[i] = document.getElementById(tables[i]);
                        for (var j = 0; j < tables[i].rows.length; j++) {
                            rowsXML += '<Row>'
                            for (var k = 0; k < tables[i].rows[j].cells.length; k++) {
                                var dataType = tables[i].rows[j].cells[k].getAttribute("data-type");
                                var dataStyle = tables[i].rows[j].cells[k].getAttribute("data-style");
                                var dataValue = tables[i].rows[j].cells[k].getAttribute("data-value");
                                dataValue = (dataValue) ? dataValue : tables[i].rows[j].cells[k].innerHTML;
                                var dataFormula = tables[i].rows[j].cells[k].getAttribute("data-formula");
                                dataFormula = (dataFormula) ? dataFormula : (appname == 'Calc' && dataType == 'DateTime') ? dataValue : null;
                                ctx = {attributeStyleID: (dataStyle == 'Currency' || dataStyle == 'Date') ? ' ss:StyleID="' + dataStyle + '"' : ''
                                    , nameType: (dataType == 'Number' || dataType == 'DateTime' || dataType == 'Boolean' || dataType == 'Error') ? dataType : 'String'
                                    , data: (dataFormula) ? '' : dataValue
                                    , attributeFormula: (dataFormula) ? ' ss:Formula="' + dataFormula + '"' : ''
                                };
                                rowsXML += format(tmplCellXML, ctx);
                            }
                            rowsXML += '</Row>'
                        }
                        ctx = {rows: rowsXML, nameWS: wsnames[i] || 'Sheet' + i};
                        worksheetsXML += format(tmplWorksheetXML, ctx);
                        rowsXML = "";
                    }

                    ctx = {created: (new Date()).getTime(), worksheets: worksheetsXML};
                    workbookXML = format(tmplWorkbookXML, ctx);



                    var link = document.createElement("A");
                    link.href = uri + base64(workbookXML);
                    link.download = wbname || 'Workbook.xls';
                    link.target = '_blank';
                    document.body.appendChild(link);
                    link.click();
                    document.body.removeChild(link);
                }
            })();
        </script>
    </body>
</html>