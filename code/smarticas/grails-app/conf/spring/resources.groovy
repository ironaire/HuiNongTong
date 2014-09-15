import org.springframework.web.servlet.i18n.FixedLocaleResolver

import static java.util.Locale.setDefault

// Place your Spring DSL code here
beans = {
    localeResolver(FixedLocaleResolver) {
        setDefault(Locale.CHINA)
        //setDefault(Locale.US)
    }

}

