import React, {Component} from "react";

export default class Meettheteam extends Component {

  render(){
    return (
      <div className="container-fluid">
      <div className="row meettheteam">
          <div className="col-4">
            <img src="assets/maliha.jpeg" className="rounded-circle" />
            <p className="position-title"><strong>Full-stack Web Developer</strong></p>
            <p>Pharmacist turned Fullstack Developer. Eager to hack away until she gets it, Maliha is analytical, curious and persistent to "get it to work!". Maliha is most loved for her ability to remain calm in stressful situations and her lengthy code-related messages at 3am.</p>
          </div>

          <div className="col-4">
            <img src="assets/saba.jpeg" className="rounded-circle" />
            <p className="position-title"><strong>Full-stack Web Developer</strong></p>
            <p>HR Professional turned Fullstack Developer. When Saba isn't telling a story through her nightly Slack #STORYTIME posts, Saba spends her time looking at excellent web design, animations and color schemes. Saba is most loved for her ability to ask good questions and manage risk in times of stress.</p>
          </div>

          <div className="col-4">
            <img src="assets/sarahfarah.jpeg" className="rounded-circle" />
            <p className="position-title"><strong>Full-stack Web Developer</strong></p>
            <p>ESL teacher turned Full-stack Web Developer. Sarah is a lifelong learner who approaches new challenges with courage and humility. When she is not learning everything-React, Sarah is making the room laugh. Sarah is most loved for her ability to perserve & motivate those around her.</p>
          </div>
      </div>
    </div>
    );
  }
}