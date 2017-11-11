.class public final Lcom/piriform/ccleaner/ui/fragment/j;
.super Lcom/piriform/ccleaner/ui/fragment/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/n",
        "<",
        "Lcom/piriform/ccleaner/a/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;-><init>()V

    return-void
.end method

.method public static M()Lcom/piriform/ccleaner/ui/fragment/j;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/j;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/j;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/piriform/ccleaner/f/e;

    new-instance v1, Lcom/piriform/ccleaner/settings/b;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/j;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, v2}, Lcom/piriform/ccleaner/settings/b;-><init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p2, v1}, Lcom/piriform/ccleaner/f/e;-><init>(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/f/e$a;)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/fragment/j;)V

    .line 35
    return-void
.end method

.method protected final b(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/core/a/b;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/piriform/ccleaner/ui/b/k;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/ui/b/k;-><init>(Lcom/piriform/ccleaner/f/j;)V

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/j;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final q_()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
