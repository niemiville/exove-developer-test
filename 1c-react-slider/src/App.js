import { useState } from 'react';
import Slider from '@mui/material/Slider';

/** 1C. Create a slider in react
  - Have its value stored in state
  - Have it fire an event with the value
  - Have it fire the event only when the user has stopped moving it
*/
function App() {
  const [sliderValue, setSliderValue] = useState(50);
  const [committedSliderValue, setCommittedSliderValue] = useState(50);

  const handleChange = (newValue) => {
    setSliderValue(newValue);  
  };

  const handleChangeCommitted = () => {
    setCommittedSliderValue(sliderValue);
  };

  return (
    <div>
      <Slider 
        min={0} 
        max={100} 
        value={sliderValue} 
        onChange={ e => handleChange(e.target.value)} 
        onChangeCommitted={ _e => handleChangeCommitted()} 
      />
      <p>Slider value: {sliderValue}</p>
      <p>Committed slider value: {committedSliderValue}</p>
    </div>
  );
}

export default App;
