.class public final Lcom/avast/a/a/a/a/a$c$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/a/a/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/a/a/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/a/a/a/a$c;",
        "Lcom/avast/a/a/a/a/a$c$a;",
        ">;",
        "Lcom/avast/a/a/a/a/a$d;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/avast/a/a/a/a/a$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 309
    invoke-static {}, Lcom/avast/a/a/a/a/a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/a$c$a;->b:Lcom/avast/a/a/a/a/a$a;

    .line 234
    return-void
.end method

.method private e()Lcom/avast/a/a/a/a/a$c$a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1239
    new-instance v2, Lcom/avast/a/a/a/a/a$c$a;

    invoke-direct {v2}, Lcom/avast/a/a/a/a/a$c$a;-><init>()V

    .line 250
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/a$c$a;->a()Lcom/avast/a/a/a/a/a$c;

    move-result-object v3

    .line 1278
    invoke-static {}, Lcom/avast/a/a/a/a/a$c;->a()Lcom/avast/a/a/a/a/a$c;

    move-result-object v0

    if-eq v3, v0, :cond_0

    .line 2114
    iget v0, v3, Lcom/avast/a/a/a/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1279
    :goto_0
    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, v3, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 2348
    iget v3, v2, Lcom/avast/a/a/a/a/a$c$a;->a:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_2

    iget-object v1, v2, Lcom/avast/a/a/a/a/a$c$a;->b:Lcom/avast/a/a/a/a/a$a;

    .line 2349
    invoke-static {}, Lcom/avast/a/a/a/a/a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 2350
    iget-object v1, v2, Lcom/avast/a/a/a/a/a$c$a;->b:Lcom/avast/a/a/a/a/a$a;

    .line 2351
    invoke-static {v1}, Lcom/avast/a/a/a/a/a$a;->a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/a/a/a/a/a$a$a;->a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/a/a/a/a$a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/a/a/a/a/a$c$a;->b:Lcom/avast/a/a/a/a/a$a;

    .line 2356
    :goto_1
    iget v0, v2, Lcom/avast/a/a/a/a/a$c$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/avast/a/a/a/a/a$c$a;->a:I

    .line 250
    :cond_0
    return-object v2

    .line 2114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2353
    :cond_2
    iput-object v0, v2, Lcom/avast/a/a/a/a/a$c$a;->b:Lcom/avast/a/a/a/a/a$a;

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/avast/a/a/a/a/a$c;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    new-instance v2, Lcom/avast/a/a/a/a/a$c;

    invoke-direct {v2, v1}, Lcom/avast/a/a/a/a/a$c;-><init>(C)V

    .line 267
    iget v3, p0, Lcom/avast/a/a/a/a/a$c$a;->a:I

    .line 269
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/a/a$c$a;->b:Lcom/avast/a/a/a/a/a$a;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/a$c;->a(Lcom/avast/a/a/a/a/a$c;Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a;

    .line 273
    invoke-static {v2, v0}, Lcom/avast/a/a/a/a/a$c;->a(Lcom/avast/a/a/a/a/a$c;I)I

    .line 274
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$c$a;->e()Lcom/avast/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$c$a;->e()Lcom/avast/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$c$a;->e()Lcom/avast/a/a/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method
