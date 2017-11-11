.class public final Lcom/piriform/ccleaner/h/a;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/v",
        "<",
        "Lcom/piriform/ccleaner/l/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method

.method private static b(Lcom/google/gson/c/a;)Lcom/piriform/ccleaner/l/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/c/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/l/a;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/l/a;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to parse LocalTime"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/c/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-static {p1}, Lcom/piriform/ccleaner/h/a;->b(Lcom/google/gson/c/a;)Lcom/piriform/ccleaner/l/a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p2, Lcom/piriform/ccleaner/l/a;

    .line 1015
    invoke-virtual {p2}, Lcom/piriform/ccleaner/l/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/c/c;->b(Ljava/lang/String;)Lcom/google/gson/c/c;

    .line 11
    return-void
.end method
