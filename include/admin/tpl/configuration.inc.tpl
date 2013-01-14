{* HTML5: Yes *}
{* jQuery: NN *}

{if $installAction == 'check'}
    {if $diagnosticError}
            <h2>{$CONST.DIAGNOSTIC_ERROR}</h2>
        {foreach $res as $r}
            <span class="msg_error"><span class="icon-attention"></span> {$r}</span>
        {/foreach}
    {else}
        {if $htaccessRewrite}
            <h2>{$CONST.ATTEMPT_WRITE_FILE|sprintf:"{$serendipityPath}htaccess"}</h2>
            {if is_array($res)}
                {foreach $res as $r}
                <span class="msg_notice"><span class="icon-info-circle"></span> {$r}</span>
                {/foreach}
            {else}
                <span class="msg_success"><span class="icon-ok-circle"></span> {$CONST.DONE}</span>
            {/if}
        {/if}
        <span class="msg_success"><span class="icon-ok-circle"></span> {$CONST.WRITTEN_N_SAVED}</span>
    {/if}
{else}
    {$config}
{/if}