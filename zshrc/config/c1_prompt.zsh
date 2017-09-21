# zshrc
# -------------------------------------------------


autoload -Uz add-zsh-hook
add-zsh-hook precmd my_precmd

flg=0
function my_precmd() {
	if [ $flg -eq 1 ]; then
		echo ""
	fi
	flg=1
}

clock="${DARKGREEN_256}%T${RESET_256}"

root_prompt=\
"${GRAY_256}[${B_RED}%n${RESET} ${clock}${GRAY_256}]${RESET}${GRAY_256}:%~${RESET_256}
${B_RED}> ${RESET}"

general_prompt=\
"${GRAY_256}[%n ${clock}${GRAY_256}]${RESET}${GRAY_256}:%~${RESET_256}
${B_YELLOW}> ${RESET}"

right_prompt=""

if [ $UID -eq 0 ]; then
	PROMPT=${root_prompt}
	PROMPT2=".."
else
	PROMPT=${general_prompt}
	PROMPT2=".."
fi
	RPROMPT=${right_prompt}

# 現在時刻を更新する
zmodload zsh/datetime # $EPOCHSECONDS, strftime等を利用可能に
reset_tmout() { TMOUT=$[60-EPOCHSECONDS%60] }
precmd_functions=($precmd_functions reset_tmout) # プロンプト表示時に更新までの時間を再計算
redraw_tmout() { zle reset-prompt; reset_tmout } # 時刻を更新
TRAPALRM() { redraw_tmout }


# git の情報


zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "${YELLOW}!"
zstyle ':vcs_info:git:*' unstagedstr "${RED}+"
zstyle ':vcs_info:*' formats "${GREEN}%c%u[%b]${RESET}"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

setopt prompt_subst
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
