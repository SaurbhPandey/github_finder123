import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import Navbar from './Components/Layout/Navbar';
import './App.css';
import Footer from './Components/Layout/Footer';
import Alert from './Components/Layout/Alert';
import About from './pages/About';
import NotFound from './pages/NotFound';
import Home from './pages/Home';
import User from './pages/User';
import { GithubProvider } from './context/github/GithubContext';
import { AlertProvider } from './context/alert/AlertContext';



function App() {
    // hurray
    // hurray
    // hurray
  // hurray
    // hurray
    // hurray
  return (
    <GithubProvider>
    <AlertProvider>
    <Router>
     <div className="flex flex-col justify-between h-screen">
      <Navbar />

      <main className='container mx-auto px-3 pb-12'>
      <Alert />
        <Routes>
            <Route path='/' element={<Home />} />
            <Route path='/about' element={<About />} />
            <Route path='/user/:login' element={<User />} />
            <Route path='/notfound' element={<NotFound />} />
            <Route path='*' element={<NotFound />} />
        </Routes>


      </main>

      <Footer />
     </div>
     
    </Router>
    </AlertProvider>
    </GithubProvider>

  )
}

export default App;
