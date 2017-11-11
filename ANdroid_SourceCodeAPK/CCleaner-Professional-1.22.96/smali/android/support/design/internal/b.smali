.class final Landroid/support/design/internal/b;
.super Landroid/support/design/internal/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/b/z;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/design/internal/a;-><init>()V

    .line 31
    new-instance v0, Landroid/support/b/a;

    invoke-direct {v0}, Landroid/support/b/a;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    .line 32
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/b/z;->a(I)Landroid/support/b/z;

    .line 33
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    .line 1452
    iget-object v0, v0, Landroid/support/b/n;->a:Landroid/support/b/q;

    invoke-virtual {v0}, Landroid/support/b/q;->a()Landroid/support/b/q;

    .line 34
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    new-instance v1, Landroid/support/v4/view/b/b;

    invoke-direct {v1}, Landroid/support/v4/view/b/b;-><init>()V

    .line 1481
    iget-object v0, v0, Landroid/support/b/n;->a:Landroid/support/b/q;

    invoke-virtual {v0, v1}, Landroid/support/b/q;->a(Landroid/animation/TimeInterpolator;)Landroid/support/b/q;

    .line 35
    new-instance v0, Landroid/support/design/internal/h;

    invoke-direct {v0}, Landroid/support/design/internal/h;-><init>()V

    .line 36
    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    invoke-virtual {v1, v0}, Landroid/support/b/z;->a(Landroid/support/b/n;)Landroid/support/b/z;

    .line 37
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/design/internal/b;->a:Landroid/support/b/z;

    invoke-static {p1, v0}, Landroid/support/b/t;->a(Landroid/view/ViewGroup;Landroid/support/b/n;)V

    .line 41
    return-void
.end method
