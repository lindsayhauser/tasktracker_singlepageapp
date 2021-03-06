// Home jsx
import React from 'react';
import { Link, BrowserRouter as Router, Route } from 'react-router-dom';
import { connect } from 'react-redux';

function Home(props) {
  let { session } = props;
  if (session) {
    return <div className="row my-2">
      <div className="col-9">
        <h1>Welcome to TaskTracker</h1>
      </div>
    </div>
  } else {
    return <div className="row my-2">
      <div className="col-9">
        <h1>Welcome to TaskTracker</h1>
        <p><Link to={"/register"}>Register</Link></p>
      </div>
    </div>
  }
}

export default connect((state) => { return { session: state.session }; })(Home);