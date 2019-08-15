/**
 +----------------------------------------------------------
 * tinymce初始化
 +----------------------------------------------------------
 */
tinymce.init({
    selector:'#content',
    theme: 'silver',
    skin: 'oxide',
    language:'zh_CN',
    width:'800px',
    height:'500px',
    menubar:false,
    convert_urls :false,
    contextmenu: false,
    fontsize_formats: "10px 11px 12px 14px 16px 18px 20px 24px 36px",
    plugins: [
      'autolink lists link charmap textcolor',
      'code hr pagebreak map textpattern image imagetools',
      'media table help wordcount fullscreen'
    ],
    toolbar: 'fontsizeselect bold italic strikethrough forecolor backcolor alignleft aligncenter alignright alignjustify outdent indent numlist bullist code | link unlink media map charmap table hr removeformat undo redo help fullscreen'
});

/**
 +----------------------------------------------------------
 *  tinymce插入HTML
 +----------------------------------------------------------
 */
function insertMce(html) {
    tinyMCE.execCommand('mceInsertContent', false, html); 
}