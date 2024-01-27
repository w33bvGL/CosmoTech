<template>
  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"
      >&times;</a
    >
    <div class="navigation-menus">
      <a href="#">Սմարթֆոններ</a>
      <a href="#">Պլանշետներ</a>
      <a href="#">Նոթբուքեր</a>
      <a href="#">Համակարգիչներ</a>
      <a href="#">Մոնիտորներ</a>
      <a href="#">Տպիչներ</a>
      <a href="#">Հեռուստացույցներ</a>
      <a href="#">Աուդիո-վիդեո սարքեր</a>
      <a href="#">Ֆոտոխցիկներ</a>
      <a href="#">Պրոեկտորներ</a>
      <a href="#">Խաղային կոնսոլներ</a>
      <a href="#">Դրոններ</a>
      <a href="#">Ժամացույցներ</a>
      <a href="#">Ակսեսուարներ</a>
    </div>
  </div>
</template>

<script>
//
</script>

<style scoped lang="scss">
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 910;
  top: 130px;
  left: 0;
  background-color: #ffffff;
  overflow-y: scroll;
  padding-top: 60px;
  transition: 0.3s;
  -webkit-box-shadow: 5px 0px 5px -5px rgba(180, 180, 180, 0.5);
  -moz-box-shadow: 5px 0px 5px -5px rgba(180, 180, 180, 0.5);
  box-shadow: 5px 0px 5px -5px rgba(180, 180, 180, 0.5);

  &::-webkit-scrollbar {
    width: 6px;
    background-color: #e9e9e981;
  }
}

.navigation-menus {
  display: flex;
  flex-direction: column;
  margin: 10px 20px;
  gap: 5px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 1em;
  color: black;
  display: block;
  text-wrap: nowrap;
  transition: all 0.1s;
}

.sidenav a:hover {
  color: #0059bc;
  background-color: #e9e9e981;
}

.sidenav .closebtn {
  display: flex;
  align-items: center;
  position: absolute;
  color: #999999;
  padding: 0;
  padding: 5px 13px;
  border-radius: 10px;
  margin: 10px;
  top: 0;
  right: 0;
  font-size: 2em;
}
</style>
