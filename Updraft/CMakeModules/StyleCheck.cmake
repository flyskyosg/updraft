SET(STYLE_CHECK_CPPLINT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/scripts/cpplint.py)

FUNCTION (STYLE_CHECK tgt)
  IF(SLOPPY_BUILD)
    SET(NONFATAL --nonfatal)
  endif(SLOPPY_BUILD)

  # customize used filters
  SET(ADD_FILTER --filter=-build/include_what_you_use)

  ADD_CUSTOM_COMMAND(
    TARGET ${tgt}
    PRE_BUILD
    COMMAND python ${STYLE_CHECK_CPPLINT_PATH} ${ADD_FILTER} ${NONFATAL} ${ARGN}
  )
ENDFUNCTION(STYLE_CHECK)

