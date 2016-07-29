#ifndef EXTENDED_ERRORS_H
#define EXTENDED_ERRORS_H

#define ERR_FAIL_COND_EXPLAIN(m_cond,m_reason) \
	{ if ( m_cond ) {	\
		_err_set_last_error(m_reason); _err_error_exists=true;	\
        _err_print_error(FUNCTION_STR,__FILE__,__LINE__,"Condition ' " _STR(m_cond)" ' is true.");	\
		return;	 \
	}else _err_error_exists=false; }	\

#define ERR_FAIL_COND_V_EXPLAIN(m_cond,m_retval,m_reason) \
	{ if ( m_cond ) {	\
		_err_set_last_error(m_reason); _err_error_exists=true;	\
        _err_print_error(FUNCTION_STR,__FILE__,__LINE__,"Condition ' " _STR(m_cond)" ' is true. returned: " _STR(m_retval));	\
		return m_retval;	 \
	}else _err_error_exists=false; }	\

#endif // EXTENDED_ERRORS_H

