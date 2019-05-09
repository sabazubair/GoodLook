import React, {Component} from "react";

export default class About extends Component {
  render(){
    return (
      <div className="about">
          <h1>Why Goodlook?</h1>
          <br/>
          <p style={{fontSize: "1.45rem"}}>Goodlook was founded on a mission to educate and help the average person find their style and learn more about what clothes reflect their personality.</p>
          <p style={{fontSize: "1.45rem"}}> The founders Saba, Sarah and Maliha all shared a common problem: finding outfits that suited them. Many times, as trends came and went, they found themselves having clothes they never wore. When it came time for events, they would spend hours figuring out the right outfit. Fed up with the continuous loss of time, they sought to create a tool.</p>
          <p style={{fontSize: "1.45rem"}}>Based on the results of a simple quiz, Goodlook connects insights of a user's style persona with a variety of recommended outfits for users to save to their virtual wardrobe.</p>
      </div>
    );
  }
}