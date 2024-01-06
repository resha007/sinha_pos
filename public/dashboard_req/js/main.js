
const d = new Date();

var today = d.getFullYear() + '-' + (d.getMonth()+1) + '-' + d.getDate();


//get customer count
$.ajax({
    type        : 'get',
    url		    : "customers/search",
    dataType    : 'json',
    async       : true,
    success: function(data) {
        $("#customers").html(data["total"])
        
    }
});

//get sale count  
$.ajax({
    type        : 'get',
    url		    : "suppliers/search",
    dataType    : 'json',
    async       : true,
    success: function(data) {
        
        $("#suppliers").html(data["total"])
        
    }
});

//get item count
$.ajax({
    type        : 'get',
    url		    : "items/search",
    dataType    : 'json',
    data        : { start_date: '2021-01-01', end_date: today, search: '', filters: [''] },
    async       : true,
    success: function(data) {
        $("#items").html(data["total"]);
        
    }
});

//get low inventoy count
$.ajax({
    type        : 'get',
    url		    : "items/search",
    dataType    : 'json',
    data        : { start_date: '2021-01-01', end_date: today, search: '', filters: ['low_inventory'] },
    async       : true,
    success: function(data) {
        $("#lowinventory").html(data["total"]);
        
        var tableData = "";
        for (var i in data["rows"]) {
            tableData += "<tr><td>"+data["rows"][i]["name"]+"</td>" + "<td>"+data["rows"][i]["quantity"]+"</td>" + "<td>"+data["rows"][i]["company_name"]+"</td></tr>";
        }


        $("#lowtable").html(tableData);
    }
});


//get sale count
$.ajax({
    type        : 'get',
    url		    : "sales/search",
    dataType    : 'json',
    data        : { start_date: '2021-01-01', end_date: today, search: '', filters: [''] },
    async       : true,
    success: function(data) {
        
        $("#sales").html(data["total"])
        
    }
});



//get today sale count
$.ajax({
    type        : 'get',
    url		    : "sales/search",
    dataType    : 'json',
    data        : { start_date: today, end_date: today, search: '', filters: [''] },
    async       : true,
    success: function(data) {
        
        $("#todaysales").html(data["total"])
        
    }
});

//get expenses
$.ajax({
    type        : 'get',
    url		    : "expenses/search",
    dataType    : 'json',
    data        : { start_date: today, end_date: today, search: '', filters: [''] },
    async       : true,
    success: function(data) {
//alert(data["payment_summary"]);
        $("#expenses").html(data["payment_summary"]);
        
    }
});

//today earning
$.ajax({
    type        : 'get',
    url		    : "reports/summary",
    dataType    : 'json',
    data        : { start_date: today, end_date: today },
    async       : true,
    success: function(data) {
        //alert(data["data"]["profit"]);

        $("#earning").html("Rs. "+data["summary"]["total"].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
        $("#profit").html("Rs. "+ data["summary"]["profit"].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") );
        
    }
});

//profit
$.ajax({
    type        : 'get',
    url		    : "reports/getProfit",
    data        : { start_date: '2021-01-01', end_date: today },
    dataType    : 'json',
    async       : true,
    success: function(data) {//alert(data);
        //alert(data["data"]["profit"]);

        //$("#earning").html("Rs. "+data["summary"]["total"].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
        $("#profitonhand").html("Rs. "+ data["profit"].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") );
        
    }
});

//trending items
$.ajax({
    type        : 'get',
    url		    : "reports/summary",
    dataType    : 'json',
    data        : { start_date: '2021-01-01', end_date: today },
    async       : true,
    success: function(data) {
        var tableData = "";
        
        for (var i in data["data"]) {
            tableData += "<tr><td>"+data["data"][i]["item_name"]+"</td>" + "<td>"+data["data"][i]["quantity"]+"</td>" + "<td>"+(data["data"][i]["profit"])+"</td></tr>";
        }
        
        $("#trendingtable").html(tableData);
    }
});


