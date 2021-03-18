<tr>
<td class="header">
<a href="{{ $url }}" style="display: inline-block;">
@if (trim($slot) === 'Laravel')
<img src="https://i.ibb.co/wQpBG8k/Dev-Panda-1.png" class="logo" alt="DevPanda Logo">
@else
{{ $slot }}
@endif
</a>
</td>
</tr>
