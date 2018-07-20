
        function PreviewImg(imgFile) {
            var newPreview = document.getElementById("newPreview");
            newPreview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgFile.value;
            newPreview.style.width = "80px";
            newPreview.style.height = "60px";
        }
   
