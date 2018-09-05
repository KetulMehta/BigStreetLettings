function active() {
    var name = (function () {
        var a = window.location.href;
        b = a.lastIndexOf("/");
        return a.substr(b + 1);
    }());

    if (name == "default.aspx") {
        document.getElementById('default').setAttribute("class", "active");
    }

    if (name.match(/Slider.aspx*/) ){
        document.getElementById('master').setAttribute("class", "active");
    }

    if (name.match(/Testimonial.aspx*/)) {
        document.getElementById('master').setAttribute("class", "active");
    }

    if (name == "Company_Profile.aspx") {
        document.getElementById('companyprofile').setAttribute("class", "active");
    }

    if (name.match(/Country.aspx*/)) {
        document.getElementById('locality').setAttribute("class", "active");
    }

    if (name.match(/State.aspx*/)) {
        document.getElementById('locality').setAttribute("class", "active");
    }

    if (name.match(/City.aspx*/)) {
        document.getElementById('locality').setAttribute("class", "active");
    }

    if (name.match(/Area.aspx*/)) {
        document.getElementById('locality').setAttribute("class", "active");
    } 

    if (name == "Property_Type.aspx") {
        document.getElementById('propertytype').setAttribute("class", "active");
    }

    if (name == "RentType.aspx") {
        document.getElementById('renttype').setAttribute("class", "active");
    }

    if (name == "PropertyMain.aspx") {
        document.getElementById('property').setAttribute("class", "active");
    }

    if (name == "Contact.aspx") {
        document.getElementById('contact').setAttribute("class", "active");
    }
}

