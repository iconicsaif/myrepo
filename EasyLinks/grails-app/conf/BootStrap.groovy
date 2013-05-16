import com.progoti.security.Country
import com.progoti.security.User
import com.progoti.security.Bank
import com.progoti.security.Month
import com.progoti.security.Authority
import com.progoti.security.UserGroup




class BootStrap {

    def init = { servletContext ->
        Country.initialize();
        Authority.initialize();
        UserGroup.initialize();
        User.initialize();
        Bank.initialize();
        Month.initialize();

    }
    def destroy = {
    }
}
