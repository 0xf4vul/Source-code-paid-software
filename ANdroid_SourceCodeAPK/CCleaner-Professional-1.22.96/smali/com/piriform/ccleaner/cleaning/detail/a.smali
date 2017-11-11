.class public final Lcom/piriform/ccleaner/cleaning/detail/a;
.super Lcom/piriform/ccleaner/ui/fragment/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/n",
        "<",
        "Lcom/piriform/ccleaner/a/a/ab;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;-><init>()V

    return-void
.end method

.method public static p_()Lcom/piriform/ccleaner/cleaning/detail/a;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/piriform/ccleaner/cleaning/detail/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/detail/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/piriform/ccleaner/f/u;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/detail/a;->O()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/d;->o()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    return-object v0
.end method

.method protected final a(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 1

    .prologue
    .line 1022
    new-instance v0, Lcom/piriform/ccleaner/cleaning/detail/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/detail/a;-><init>()V

    .line 1023
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/cleaning/detail/a;->c(Lcom/piriform/ccleaner/f/j;)V

    .line 45
    return-object v0
.end method

.method protected final q_()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
