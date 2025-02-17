import React from 'react';
import { Routes, Route } from 'react-router-dom';
import RegistrationPage from './RegistrationPage'; // ✅ Ensure this file exists

function AppRoutes() {
    return (
        <Routes>
            <Route path="/" element={<h1>Welcome to Home Page</h1>} /> 
            <Route path="/register" element={<RegistrationPage />} />
        </Routes>
    );
}

export default AppRoutes;
