import React from 'react';

const noUser = () => (
 <h1>No User!!!!</h1>
);

const user = (currentUser, logout) => (
  <div>
    <h1>Hi, {currentUser.first_name}</h1>
    <button onClick={logout}>Logout</button>
  </div>
);

const MainPage = ({ currentUser, logout }) => (
  currentUser ? user(currentUser, logout) : noUser()
);

export default MainPage;
