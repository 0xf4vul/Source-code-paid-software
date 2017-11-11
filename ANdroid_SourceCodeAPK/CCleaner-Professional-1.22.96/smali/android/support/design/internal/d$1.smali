.class final Landroid/support/design/internal/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/d;-><init>(Landroid/content/Context;B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/d;


# direct methods
.method constructor <init>(Landroid/support/design/internal/d;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Landroid/support/design/internal/d$1;->a:Landroid/support/design/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    check-cast p1, Landroid/support/design/internal/BottomNavigationItemView;

    .line 89
    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/j;

    move-result-object v0

    .line 90
    iget-object v1, p0, Landroid/support/design/internal/d$1;->a:Landroid/support/design/internal/d;

    invoke-static {v1}, Landroid/support/design/internal/d;->b(Landroid/support/design/internal/d;)Landroid/support/v7/view/menu/h;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/d$1;->a:Landroid/support/design/internal/d;

    invoke-static {v2}, Landroid/support/design/internal/d;->a(Landroid/support/design/internal/d;)Landroid/support/design/internal/BottomNavigationPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 93
    :cond_0
    return-void
.end method
