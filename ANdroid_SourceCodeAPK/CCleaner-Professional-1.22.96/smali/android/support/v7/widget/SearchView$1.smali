.class final Landroid/support/v7/widget/SearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$1;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$1;->a:Landroid/support/v7/widget/SearchView;

    .line 191
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    sget-object v1, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v7/widget/SearchView$a;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView$1;->a:Landroid/support/v7/widget/SearchView;

    .line 3075
    iget-object v3, v1, Landroid/support/v7/widget/SearchView$a;->c:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 3077
    :try_start_0
    iget-object v1, v1, Landroid/support/v7/widget/SearchView$a;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3078
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 3084
    :cond_1
    invoke-virtual {v0, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
