<style>
    :root {
        --card-line-height: 1.2em;
        --card-padding: 1em;
        --card-radius: 0.5em;
        --color-green: #2965CC;
        --color-gray: #e2ebf6;
        --color-dark-gray: #c4d1e1;
        --radio-border-width: 2px;
        --radio-size: 1.5em;
    }

    .grid {
        display: grid;
        grid-gap: var(--card-padding);
        margin: 0 auto;
        max-width: 60em;
        padding: 0;
    }

    @media (min-width: 42em) {
        .grid {
            grid-template-columns: repeat(3, 1fr);
        }
    }

    .card {
        background-color: #fff;
        border-radius: var(--card-radius);
        position: relative;
    }

    .card:hover {
        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.15);
    }

    .radio {
        font-size: inherit;
        margin: 0;
        position: absolute;
        right: calc(var(--card-padding) + var(--radio-border-width));
        top: calc(var(--card-padding) + var(--radio-border-width));
    }

    @supports (-webkit-appearance: none) or (-moz-appearance: none) {
        .radio {
            -webkit-appearance: none;
            -moz-appearance: none;
            background: #fff;
            border: var(--radio-border-width) solid var(--color-gray);
            border-radius: 50%;
            cursor: pointer;
            height: var(--radio-size);
            outline: none;
            transition: background 0.2s ease-out, border-color 0.2s ease-out;
            width: var(--radio-size);
        }

        .radio::after {
            border: var(--radio-border-width) solid #fff;
            border-top: 0;
            border-left: 0;
            content: '';
            display: block;
            height: 0.75rem;
            left: 25%;
            position: absolute;
            top: 50%;
            transform: rotate(45deg) translate(-50%, -50%);
            width: 0.375rem;
        }

        .radio:checked {
            background: var(--color-green);
            border-color: var(--color-green);
        }

        .card:hover .radio {
            border-color: var(--color-dark-gray);
        }

        .card:hover .radio:checked {
            border-color: var(--color-green);
        }
    }

    .plan-details {
        border: var(--radio-border-width) solid var(--color-gray);
        border-radius: var(--card-radius);
        cursor: pointer;
        display: flex;
        flex-direction: column;
        padding: var(--card-padding);
        transition: border-color 0.2s ease-out;
    }

    .card:hover .plan-details {
        border-color: var(--color-dark-gray);
    }

    .radio:checked~.plan-details {
        border-color: var(--color-green);
    }

    .radio:focus~.plan-details {
        box-shadow: 0 0 0 2px var(--color-dark-gray);
    }

    .radio:disabled~.plan-details {
        color: var(--color-dark-gray);
        cursor: default;
    }

    .radio:disabled~.plan-details .plan-type {
        color: var(--color-dark-gray);
    }

    .card:hover .radio:disabled~.plan-details {
        border-color: var(--color-gray);
        box-shadow: none;
    }

    .card:hover .radio:disabled {
        border-color: var(--color-gray);
    }

    .plan-type {
        color: var(--color-green);
        font-size: 1.5rem;
        font-weight: bold;
        line-height: 1em;
    }

    .plan-cost {
        font-size: 2.5rem;
        font-weight: bold;
        padding: 0.5rem 0;
    }

    .slash {
        font-weight: normal;
    }

    .plan-cycle {
        font-size: 2rem;
        font-variant: none;
        border-bottom: none;
        cursor: inherit;
        text-decoration: none;
    }

    .hidden-visually {
        border: 0;
        clip: rect(0, 0, 0, 0);
        height: 1px;
        margin: -1px;
        overflow: hidden;
        padding: 0;
        position: absolute;
        white-space: nowrap;
        width: 1px;
    }
</style>
<div>
    <div class="p-8 mt-4">

        <div class=' bp3-card m-3'>
            <h2 class="bp3-heading"><?= $data['user']['name']  ?></h2><span class="bp3-tag bp3-intent-primary mr-4"><?= $data['user']['role'] ? '' : 'suspended' ?></span>
            <h4><?= $data['user']['email'] ?><h4>
        </div>
        <div class=' bp3-card m-3'>
            <h3 class="bp3-heading">Subscription</h3>
            <div class="grid">
                <label class="card">
                    <input name="plan" class="radio" type="radio" checked>

                    <span class="plan-details">
                        <span class="plan-type">Standard</span>
                        <span class="plan-cost">$10<span class="slash">/</span><abbr class="plan-cycle" title="month">mo</abbr></span>
                        <span>1 month</span>
                        <span>20 GB/mo</span>
                        <span>1080p streaming</span>
                    </span>
                </label>
                <label class="card">
                    <input name="plan" class="radio" type="radio">
                    <span class="plan-details" aria-hidden="true">
                        <span class="plan-type">Premium</span>
                        <span class="plan-cost">$18<span class="slash">/</span><span class="plan-cycle">mo</span></span>
                        <span>1 month</span>
                        <span>30 GB/mo</span>
                        <span>4k streaming</span>
                    </span>
                </label>
            </div>
            <a role="button" class="bp3-button bp3-intent-primary bp3-large" :modifier tabindex="0">Purchase selected subscription</a>
        </div>
        <div class=' bp3-card m-3'>
            <h3 class="bp3-heading">Misc</h3>
            <div class="bp3-button-group .modifier">
                <a class="bp3-button " tabindex="0" role="button">Refresh broswer</a>
            </div>
        </div>
    </div>
</div>

<div>