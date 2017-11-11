.class public final Lcom/piriform/ccleaner/ui/fragment/s;
.super Lcom/piriform/ccleaner/ui/fragment/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/n",
        "<",
        "Lcom/piriform/ccleaner/a/a/w;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/n;-><init>()V

    return-void
.end method

.method public static Q()Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/s;->d(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/s;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/s;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/s;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/s;-><init>()V

    .line 24
    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/ui/fragment/s;->c(Lcom/piriform/ccleaner/f/j;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/s;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/ContentResolver;Lcom/piriform/ccleaner/f/m;)Lcom/piriform/ccleaner/f/p;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/piriform/ccleaner/f/u;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/s;->O()Lcom/piriform/ccleaner/f/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/piriform/ccleaner/f/d;->i()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/piriform/ccleaner/f/u;-><init>(Lcom/piriform/ccleaner/f/m;Ljava/io/File;)V

    return-object v0
.end method

.method protected final a(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lcom/piriform/ccleaner/ui/fragment/s;->d(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/s;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/s;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final q_()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
