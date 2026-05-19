import Link from "next/link";
import Header from "./Header";

const styles = {
    bulletClear : {
        listStyle: "none",
    },
    underlineClear : {
        textDecoration: "none",
    }
}

const Nav = props => {
    return(
        <Header>
            <ul>
                <li style={styles.bulletClear}><Link href="/" legacyBehavior ><a style={styles.underlineClear}>Home</a></Link></li>
                <li style={styles.bulletClear}><Link href="/about" legacyBehavior><a style={styles.underlineClear}>About</a></Link></li>
            </ul>
        </Header>
    )
}

export default Nav;