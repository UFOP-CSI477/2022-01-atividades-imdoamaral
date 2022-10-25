import { BrowserRouter, Routes, Route } from 'react-router-dom';
import App from './App';
import CreateCidade from './components/cidades/CreateCidade';
import ListCidades from './components/cidades/ListCidades';
import ShowCidade from './components/cidades/ShowCidade';
import UpdateCidade from './components/cidades/UpdateCidade';
import CreateEstado from './components/estados/CreateEstado';
import ListEstados from './components/estados/ListEstados';
import ShowEstado from './components/estados/ShowEstado';
import UpdateEstado from './components/estados/UpdateEstado';
import Header from './components/header/Header';
import CreatePessoa from './components/pessoas/CreatePessoa';
import ListPessoas from './components/pessoas/ListPessoas';
import CreateTipoSanguineo from './components/tipos_sanguineos/CreateTipoSanguineo';
import ListTipoSanguineos from './components/tipos_sanguineos/ListTiposSanguneos';

const AppRoutes = () => {

    return(
        
        <BrowserRouter>

            <Header name='Israel' />

            <Routes>

                <Route path='/' element={<App />} />
                <Route path='/estados' element={<ListEstados />} />
                <Route path='/cidades' element={<ListCidades />} />
                <Route path='/estados/create' element={<CreateEstado />} />
                <Route path='/estados/show/:id' element={<ShowEstado />} />
                <Route path='/estados/update/:id' element={<UpdateEstado />} />
                <Route path='/cidades/create' element={<CreateCidade />} />
                <Route path='/cidades/show/:id' element={<ShowCidade />}/>
                <Route path='/cidades/update/:id' element={<UpdateCidade />} />
                <Route path='/pessoas' element={<ListPessoas />} />
                <Route path='/tipos-sanguineos' element={<ListTipoSanguineos />} />
                <Route path='/pessoas/create' element={<CreatePessoa />} />
                <Route path='/tipos-sanguineos/create' element={<CreateTipoSanguineo />} />

            </Routes>

        </BrowserRouter>
    );
}

export default AppRoutes;