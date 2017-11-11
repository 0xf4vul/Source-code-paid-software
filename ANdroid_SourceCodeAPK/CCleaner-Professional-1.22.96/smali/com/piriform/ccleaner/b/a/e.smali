.class public final Lcom/piriform/ccleaner/b/a/e;
.super Lcom/avast/android/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avast/android/b/b",
        "<",
        "Lcom/piriform/ccleaner/b/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final d:Lcom/google/firebase/b/a;

.field final e:Lcom/piriform/ccleaner/b/a/f;


# direct methods
.method public constructor <init>(Lcom/google/firebase/b/a;Lcom/piriform/ccleaner/b/a/f;)V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avast/android/b/b;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/b/a/e;->d:Lcom/google/firebase/b/a;

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/b/a/e;->e:Lcom/piriform/ccleaner/b/a/f;

    .line 1026
    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/e;->e:Lcom/piriform/ccleaner/b/a/f;

    .line 2022
    iget-object v0, v1, Lcom/piriform/ccleaner/b/a/f;->a:Lcom/piriform/ccleaner/b/a/d;

    .line 2027
    iget-object v2, v0, Lcom/piriform/ccleaner/b/a/d;->b:Lcom/google/gson/e;

    iget-object v0, v0, Lcom/piriform/ccleaner/b/a/d;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v3, "burgerRemoteConfig"

    const-string/jumbo v4, ""

    .line 2028
    invoke-virtual {v0, v3, v4}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/piriform/ccleaner/b/a/c;

    .line 2027
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/a/c;

    .line 2023
    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    .line 3028
    new-instance v2, Lcom/piriform/ccleaner/b/a/f$1;

    invoke-direct {v2, v1}, Lcom/piriform/ccleaner/b/a/f$1;-><init>(Lcom/piriform/ccleaner/b/a/f;)V

    .line 2024
    invoke-virtual {v0, v2}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 3032
    new-instance v1, Lcom/piriform/ccleaner/b/a/e$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/b/a/e$1;-><init>(Lcom/piriform/ccleaner/b/a/e;)V

    .line 1028
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/b/a/e;)Lcom/piriform/ccleaner/b/a/c;
    .locals 2

    .prologue
    .line 5042
    new-instance v0, Lcom/piriform/ccleaner/b/a/c;

    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/e;->d:Lcom/google/firebase/b/a;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/b/a/c;-><init>(Lcom/google/firebase/b/a;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 14
    check-cast p1, Lcom/piriform/ccleaner/b/a/c;

    .line 4056
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4057
    const-string/jumbo v1, "burgerEnvelopeCapacity"

    iget v2, p1, Lcom/piriform/ccleaner/b/a/c;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4058
    const-string/jumbo v1, "burgerSendingInterval"

    iget-wide v2, p1, Lcom/piriform/ccleaner/b/a/c;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4059
    const-string/jumbo v1, "burgerQueueCapacity"

    iget v2, p1, Lcom/piriform/ccleaner/b/a/c;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4060
    const-string/jumbo v1, "burgerFilteringRules"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/piriform/ccleaner/b/a/c;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4061
    const-string/jumbo v1, "burgerHeartBeatInterval"

    iget-wide v2, p1, Lcom/piriform/ccleaner/b/a/c;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4062
    const-string/jumbo v1, "configVersion"

    iget-wide v2, p1, Lcom/piriform/ccleaner/b/a/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4063
    const-string/jumbo v1, "openUIInterval"

    iget-wide v2, p1, Lcom/piriform/ccleaner/b/a/c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    return-object v0
.end method
