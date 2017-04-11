$(document).ready(function() {
    $('.dataTable').DataTable({

    });
    $("#countryId").on("change", function() {
        $("#company_country").val($(this).val());
        $("#company_state").val("");
        $("#company_city").val("");
    });
    $("#stateId").on("change", function() {
        $("#company_country").val($("#countryId").val());
        $("#company_state").val($(this).val());
        $("#company_city").val("");
    })
    $("#cityId").on("change", function() {
        $("#company_country").val($("#countryId").val());
        $("#company_state").val($("#stateId").val());
        $("#company_city").val($(this).val());
    });

    var states;
    $('.state_drop_down').parent().hide();
    states = $('.state_drop_down').html();
    //console.log(states);
    return $('.country_drop_down').change(function() {
        var country, escaped_country, options;
        country = $('.country_drop_down :selected').text();
        escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = $(states).filter("optgroup[label=" + escaped_country + "]").html();
        //console.log(options);
        if (options) {
            $('.state_drop_down').html(options);
            return $('.state_drop_down').parent().show();
        } else {
            $('.state_drop_down').empty();
            return $('.state_drop_down').parent().hide();
        }
    });

})
