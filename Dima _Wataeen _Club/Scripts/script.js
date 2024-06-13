// عرض الصور في عرض شرائح
var images = ["image1.jpg", "image2.jpg", "image3.jpg"];
var currentImage = 0;

function showImage() {
    var imageElement = document.getElementById("image");
    imageElement.src = images[currentImage];

    currentImage++;
    if (currentImage >= images.length) {
        currentImage = 0;
    }

    setTimeout(showImage, 3000);
}

showImage();

// إضافة أزرار التنقل في التقويم
var calendar = document.getElementById("calendar");

var previousMonthButton = document.createElement("button");
previousMonthButton.innerHTML = "<";
previousMonthButton.onclick = function () {
    calendar.fullCalendar('prev'); // التنقل إلى الشهر السابق
};

var nextMonthButton = document.createElement("button");
nextMonthButton.innerHTML = ">";
nextMonthButton.onclick = function () {
    calendar.fullCalendar('next'); // التنقل إلى الشهر التالي
};

// إضافة الأزرار إلى التقويم
calendar.parentNode.insertBefore(previousMonthButton, calendar);
calendar.parentNode.insertBefore(nextMonthButton, calendar.nextSibling);
