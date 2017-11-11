.class final Lcom/piriform/ccleaner/o/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/o/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/o/i;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/i;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/piriform/ccleaner/o/i$1;->a:Lcom/piriform/ccleaner/o/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/piriform/ccleaner/l/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/piriform/ccleaner/o/i$1;->a:Lcom/piriform/ccleaner/o/i;

    .line 1026
    iget-object v1, v1, Lcom/piriform/ccleaner/o/i;->a:Landroid/content/SharedPreferences;

    .line 45
    const-string/jumbo v2, "schedule"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/piriform/ccleaner/o/i$1;->a:Lcom/piriform/ccleaner/o/i;

    .line 2081
    if-eqz v2, :cond_2

    .line 2082
    iget-object v0, v1, Lcom/piriform/ccleaner/o/i;->b:Lcom/google/gson/e;

    const-class v1, Lcom/piriform/ccleaner/l/b;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/l/b;

    move-object v1, v0

    .line 48
    :goto_0
    if-eqz v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/o/i$1;->a:Lcom/piriform/ccleaner/o/i;

    .line 3071
    iget-object v0, v0, Lcom/piriform/ccleaner/o/i;->c:Lcom/piriform/ccleaner/a/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/d;->a()Ljava/util/List;

    move-result-object v0

    .line 3072
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3073
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 3074
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failure loading schedule from string "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 55
    throw v1

    .line 3063
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/piriform/ccleaner/l/b;->a(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :cond_1
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/piriform/ccleaner/o/i$1;->a()Lcom/piriform/ccleaner/l/c;

    move-result-object v0

    return-object v0
.end method
