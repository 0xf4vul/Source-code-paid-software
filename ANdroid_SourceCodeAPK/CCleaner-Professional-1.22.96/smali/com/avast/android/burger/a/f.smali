.class public final Lcom/avast/android/burger/a/f;
.super Lcom/avast/android/burger/a/i;
.source "SourceFile"


# static fields
.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/burger/a/f;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x4
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    .line 46
    invoke-static {}, Lcom/avast/android/burger/a/f;->a()Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    sget-object v1, Lcom/avast/android/burger/a/f;->b:[I

    .line 47
    invoke-static {p1, v1}, Lcom/avast/android/burger/a/d;->a(I[I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/burger/a/i$a;->a([I)Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    const-string/jumbo v1, "referrer"

    .line 1292
    iget-object v2, v0, Lcom/avast/android/burger/a/i$a;->c:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/avast/android/burger/a/i$a;->c:Ljava/util/List;

    .line 1295
    :cond_0
    invoke-static {}, Lcom/avast/a/b/a/a$c;->e()Lcom/avast/a/b/a/a$c$a;

    move-result-object v2

    .line 1296
    invoke-virtual {v2, v1}, Lcom/avast/a/b/a/a$c$a;->a(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;

    .line 1297
    if-eqz p2, :cond_1

    .line 1298
    invoke-virtual {v2, p2}, Lcom/avast/a/b/a/a$c$a;->b(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;

    .line 1300
    :cond_1
    iget-object v1, v0, Lcom/avast/android/burger/a/i$a;->c:Ljava/util/List;

    invoke-virtual {v2}, Lcom/avast/a/b/a/a$c$a;->a()Lcom/avast/a/b/a/a$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, v0}, Lcom/avast/android/burger/a/i;-><init>(Lcom/avast/android/burger/a/i$a;)V

    .line 50
    return-void
.end method
