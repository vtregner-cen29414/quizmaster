import { Link } from 'react-router'
import './link-button.scss'

interface LinkButtonProps {
    readonly label: string
    readonly id?: string
    readonly className?: string
    readonly icon?: React.ReactNode
    readonly to: string
}

export const LinkButton = ({ label, id, className, icon, to }: LinkButtonProps) => (
    <Link id={id} className={`link-button${className ? ` ${className}` : ''}`} to={to}>
        {icon != null && (
            <span className="link-button__icon" aria-hidden="true">
                {icon}
            </span>
        )}
        {label}
    </Link>
)
