import React from 'react';
import ChannelList from '../containers/channel_list';
import MessageList from '../containers/message_list';

const App = (props) => {
  return (
    <div className="messaging-wrapper">
      <ChannelList />
      <MessageList channelFromParams={props.match.params.channel}/>
    </div>
  );
};

export default App;
      // <div className="logo-container">
      //   <img className="messaging-logo" src="assets/images/logo.svg" />
      // </div>
