# CipherStudio Demo Guide

## Quick Start

1. **Install Dependencies**
   ```bash
   npm run install:all
   ```

2. **Start Development Servers**
   ```bash
   npm run dev
   ```
   This will start both frontend (http://localhost:3000) and backend (http://localhost:5000)

3. **Open the Application**
   - Navigate to http://localhost:3000
   - You'll see the CipherStudio IDE interface

## Demo Walkthrough

### 1. Create Your First Project
- Click the "New Project" button in the header
- Enter a project name (e.g., "My React App")
- Click "Create"

### 2. Explore the Interface
- **Left Sidebar**: Shows all your projects
- **File Explorer**: Manage files within the current project
- **Code Editor**: Write your React code (powered by Sandpack)
- **Live Preview**: See your app running in real-time

### 3. Write Some Code
The default `App.jsx` file contains:
```jsx
import React from 'react';

function App() {
  return (
    <div className="App">
      <h1>Welcome to CipherStudio!</h1>
      <p>Start coding your React application here.</p>
    </div>
  );
}

export default App;
```

Try modifying it to:
```jsx
import React, { useState } from 'react';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div className="App" style={{ padding: '20px', textAlign: 'center' }}>
      <h1>Welcome to CipherStudio!</h1>
      <p>Counter: {count}</p>
      <button 
        onClick={() => setCount(count + 1)}
        style={{ 
          padding: '10px 20px', 
          fontSize: '16px',
          backgroundColor: '#007bff',
          color: 'white',
          border: 'none',
          borderRadius: '5px',
          cursor: 'pointer'
        }}
      >
        Increment
      </button>
    </div>
  );
}

export default App;
```

### 4. Run Your Code
- Click the "Run" button to start the live preview
- You'll see your React app running in the preview pane
- Try clicking the button to see the counter increment!

### 5. Add More Files
- Click the "+" button in the file explorer
- Create a new component file (e.g., `Button.jsx`)
- Add some code:
```jsx
import React from 'react';

function Button({ onClick, children }) {
  return (
    <button 
      onClick={onClick}
      style={{
        padding: '10px 20px',
        backgroundColor: '#28a745',
        color: 'white',
        border: 'none',
        borderRadius: '5px',
        cursor: 'pointer',
        margin: '5px'
      }}
    >
      {children}
    </button>
  );
}

export default Button;
```

### 6. Switch Between Files
- Click on different file tabs to edit different files
- Each file maintains its own content

### 7. Theme Switching
- Click the sun/moon icon in the header
- Toggle between light and dark themes

### 8. Project Management
- Create multiple projects
- Switch between projects using the sidebar
- Each project maintains its own files and state

## Features Demonstrated

✅ **File Management**: Create, delete, and organize files
✅ **Code Editor**: Rich editing experience with syntax highlighting
✅ **Live Preview**: Real-time React app execution
✅ **Project Persistence**: Projects saved to localStorage
✅ **Theme Switching**: Dark/light mode toggle
✅ **Responsive Design**: Works on different screen sizes
✅ **Modern UI**: Clean, intuitive interface

## Next Steps

- Try creating more complex React components
- Experiment with different file types (.css, .json)
- Create multiple projects to test the project management
- Explore the responsive design on different screen sizes

## Troubleshooting

- **Frontend not loading**: Check if port 3000 is available
- **Backend errors**: Ensure MongoDB is running (if using local MongoDB)
- **Code not updating**: Try refreshing the preview pane
- **Files not saving**: Check browser localStorage permissions

Enjoy coding with CipherStudio! 🚀
