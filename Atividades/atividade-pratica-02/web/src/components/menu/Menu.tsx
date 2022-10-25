import { Link } from 'react-router-dom';
import './menu.css';

const Menu = () => {

    return (

        <div>
            <ul>
                <li><Link to='/'>Home</Link></li>
                <li><Link to='/estados'>Listar Estados</Link></li>
                <li><Link to='/estados/create'>Criar Estado</Link></li>
                <li><Link to='/cidades'>Listar Cidades</Link></li>
                <li><Link to='/cidades/create'>Criar Cidade</Link></li>
                <li><Link to='/pessoas'>Listar Pessoas</Link></li>
                <li><Link to='/tipos-sanguineos'>Tipos Sanguíneos</Link></li>
                <li><Link to='/pessoas/create'>Criar Pessoa</Link></li>
                <li><Link to='/tipos-sanguineos/create'>Criar Tipo Sanguíneo</Link></li>
                <li><Link to='/locais-coleta'>Listar Locais de Coleta</Link></li>
                <li><Link to='/locais-coleta/create'>Criar Local de Coleta</Link></li>
                <li><Link to='/doacoes'>Listar Doações</Link></li>
                <li><Link to='/doacoes/create'>Criar Doação</Link></li>
            </ul>
        </div>
    )
}

export default Menu;