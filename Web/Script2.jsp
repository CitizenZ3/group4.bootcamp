<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="/css/neon.css">


<script type="text/javascript" src="/js/bootstrap.bundle.min.js">


    $('.card').click(function(){
        $(this).toggleClass('flipped');
    });

</script>

<script>
 <%int i=0;%>
    var chbox;
 <%%>

    chbox=document.getElementById('one<%=i%>');
    let ren=document.querySelector('#a<%=i%>')
    function ne(){
        if (chbox.checked){
        ren.classList.add('neon')
    }else {ren.classList.remove('neon')}}
 <%i++;%>
</script>