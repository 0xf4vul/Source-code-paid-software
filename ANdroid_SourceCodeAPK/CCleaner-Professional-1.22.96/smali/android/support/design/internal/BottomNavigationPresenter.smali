.class public final Landroid/support/design/internal/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field public a:Landroid/support/design/internal/d;

.field public b:Z

.field public c:I

.field private d:Landroid/support/v7/view/menu/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Z

    .line 121
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/design/internal/d;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->d:Landroid/support/v7/view/menu/h;

    .line 1100
    iput-object v1, v0, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    .line 50
    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationPresenter;->d:Landroid/support/v7/view/menu/h;

    .line 51
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    .line 112
    instance-of v0, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/design/internal/d;

    check-cast p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    iget v2, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->a:I

    .line 3327
    iget-object v0, v1, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v3

    .line 3328
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 3329
    iget-object v4, v1, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4, v0}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3330
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 3331
    iput v2, v1, Landroid/support/design/internal/d;->c:I

    .line 3332
    iput v0, v1, Landroid/support/design/internal/d;->d:I

    .line 3333
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3334
    :cond_0
    return-void

    .line 3328
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/h;Z)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Z

    if-eqz v0, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-eqz p1, :cond_2

    .line 62
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/design/internal/d;

    invoke-virtual {v0}, Landroid/support/design/internal/d;->a()V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/design/internal/d;

    .line 1286
    iget-object v0, v3, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v4

    .line 1287
    iget-object v0, v3, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v0, v0

    if-eq v4, v0, :cond_3

    .line 1289
    invoke-virtual {v3}, Landroid/support/design/internal/d;->a()V

    goto :goto_0

    .line 1292
    :cond_3
    iget v1, v3, Landroid/support/design/internal/d;->c:I

    move v0, v2

    .line 1294
    :goto_1
    if-ge v0, v4, :cond_5

    .line 1295
    iget-object v5, v3, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5, v0}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1296
    invoke-interface {v5}, Landroid/view/MenuItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1297
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iput v5, v3, Landroid/support/design/internal/d;->c:I

    .line 1298
    iput v0, v3, Landroid/support/design/internal/d;->d:I

    .line 1294
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1301
    :cond_5
    iget v0, v3, Landroid/support/design/internal/d;->c:I

    if-eq v1, v0, :cond_6

    .line 1303
    iget-object v0, v3, Landroid/support/design/internal/d;->a:Landroid/support/design/internal/a;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/a;->a(Landroid/view/ViewGroup;)V

    :cond_6
    move v1, v2

    .line 1306
    :goto_2
    if-ge v1, v4, :cond_0

    .line 1307
    iget-object v0, v3, Landroid/support/design/internal/d;->e:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 2118
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Z

    .line 1308
    iget-object v0, v3, Landroid/support/design/internal/d;->b:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v5, v0, v1

    iget-object v0, v3, Landroid/support/design/internal/d;->f:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v5, v0}, Landroid/support/design/internal/BottomNavigationItemView;->a(Landroid/support/v7/view/menu/j;)V

    .line 1309
    iget-object v0, v3, Landroid/support/design/internal/d;->e:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 3118
    iput-boolean v2, v0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Z

    .line 1306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/view/menu/u;)Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->c:I

    return v0
.end method

.method public final b(Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>()V

    .line 106
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/design/internal/d;

    invoke-virtual {v1}, Landroid/support/design/internal/d;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->a:I

    .line 107
    return-object v0
.end method
