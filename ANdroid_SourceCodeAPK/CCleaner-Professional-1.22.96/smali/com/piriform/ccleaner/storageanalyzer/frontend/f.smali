.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/storageanalyzer/frontend/f$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/f;",
            "Lcom/piriform/ccleaner/storageanalyzer/frontend/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    sput-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/f;->d:Lcom/piriform/ccleaner/storageanalyzer/f;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$1;

    invoke-direct {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/f;->e:Lcom/piriform/ccleaner/storageanalyzer/f;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$2;

    invoke-direct {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/f;->c:Lcom/piriform/ccleaner/storageanalyzer/f;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$3;

    invoke-direct {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/f;->h:Lcom/piriform/ccleaner/storageanalyzer/f;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$4;

    invoke-direct {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/f;->b:Lcom/piriform/ccleaner/storageanalyzer/f;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$5;

    invoke-direct {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/f;->f:Lcom/piriform/ccleaner/storageanalyzer/f;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$6;

    invoke-direct {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/f;->g:Lcom/piriform/ccleaner/storageanalyzer/f;

    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$7;

    invoke-direct {v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/frontend/f$a;
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$a;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "This updater should never be empty for category: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
