// Can't use js ? create it in ruby...11/11/18
const reviewer = document.getElementById();
const url = 'https://api.github.com/users/';
const avatarHtml = (avatar) => {
  ''
};

const searchGitjubAccount = () => {
  fetch(url)
    .then(response = response.json())
    .then((data) => {
      if (data.avatar) {
        reviewer.addHtml();
      } else {
        reviewer.addHtml();
      }
    });
};
