import React from 'react';
import ReactDOM from 'react-dom/client';

function App() {
  return React.createElement('div', { style: { textAlign: 'center', padding: '50px' } },
    React.createElement('h1', { style: { color: '#0D6B6E' } }, 'بصمة - منصة المهام المصغرة'),
    React.createElement('p', null, 'المنصة تعمل بنجاح'),
    React.createElement('a', { href: 'http://localhost:8000/admin/' }, 'لوحة المسؤول')
  );
}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(React.createElement(React.StrictMode, null, React.createElement(App)));
