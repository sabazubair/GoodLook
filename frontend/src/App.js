import './App.css';
import React, {Component} from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Quiz from "./components/Quiz";
import Index from "./components/Index";
import Result from "./components/Results";
import Login from "./components/Login";
import About from "./components/About";
import MeettheTeam from "./components/Meettheteam";
import Signup from "./components/Signup";
import NavBar from "./components/NavBar";
import AfterQuiz from "./components/AfterQuiz/AfterQuiz";
import Footer from "./components/Footer";

export default class AppRouter extends Component {
render (){
return (
  <div>
    <Router>
      <NavBar />
        <Route path="/" exact component={Index} />
        <Route path="/quiz" component={Quiz} />
        <Route path="/login" component={Login} />
        <Route path="/about" component={About}/>
        <Route path="/meettheteam" component={MeettheTeam}/>
        <Route path="/signup" component={Signup}/>
        <Route path="/result" component={Result}/>
        <Route path="/afterquiz" component={AfterQuiz}/>
      <Footer />
    </Router>
  </div>
  );
}

}