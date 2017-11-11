.class public final Lcom/avast/a/b/a/a$m$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/b/a/a$m;",
        "Lcom/avast/a/b/a/a$m$a;",
        ">;",
        "Lcom/avast/a/b/a/a$n;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field private d:I

.field private e:Lcom/google/a/c;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/avast/a/b/a/a$l;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7880
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 8073
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$m$a;->e:Lcom/google/a/c;

    .line 8272
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$m$a;->b:Ljava/lang/Object;

    .line 8370
    sget-object v0, Lcom/avast/a/b/a/a$l;->a:Lcom/avast/a/b/a/a$l;

    iput-object v0, p0, Lcom/avast/a/b/a/a$m$a;->i:Lcom/avast/a/b/a/a$l;

    .line 8426
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$m$a;->c:Ljava/lang/Object;

    .line 7882
    return-void
.end method

.method static synthetic e()Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 9887
    new-instance v0, Lcom/avast/a/b/a/a$m$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$m$a;-><init>()V

    .line 7875
    return-object v0
.end method

.method private f()Lcom/avast/a/b/a/a$m$a;
    .locals 2

    .prologue
    .line 8887
    new-instance v0, Lcom/avast/a/b/a/a$m$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$m$a;-><init>()V

    .line 7912
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$m$a;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 8053
    iget v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 8054
    iput p1, p0, Lcom/avast/a/b/a/a$m$a;->d:I

    .line 8056
    return-object p0
.end method

.method public final a(Lcom/avast/a/b/a/a$l;)Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 8402
    if-nez p1, :cond_0

    .line 8403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8405
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 8406
    iput-object p1, p0, Lcom/avast/a/b/a/a$m$a;->i:Lcom/avast/a/b/a/a$l;

    .line 8408
    return-object p0
.end method

.method public final a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7968
    invoke-static {}, Lcom/avast/a/b/a/a$m;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 7997
    :cond_0
    :goto_0
    return-object p0

    .line 9462
    :cond_1
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_9

    move v2, v0

    .line 7969
    :goto_1
    if-eqz v2, :cond_2

    .line 9472
    iget v2, p1, Lcom/avast/a/b/a/a$m;->c:I

    .line 7970
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$m$a;->a(I)Lcom/avast/a/b/a/a$m$a;

    .line 9486
    :cond_2
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move v2, v0

    .line 7972
    :goto_2
    if-eqz v2, :cond_3

    .line 9496
    iget-object v2, p1, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;

    .line 7973
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$m$a;

    .line 9510
    :cond_3
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    move v2, v0

    .line 7975
    :goto_3
    if-eqz v2, :cond_4

    .line 9520
    iget v2, p1, Lcom/avast/a/b/a/a$m;->e:I

    .line 7976
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$m$a;->b(I)Lcom/avast/a/b/a/a$m$a;

    .line 9534
    :cond_4
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    move v2, v0

    .line 7978
    :goto_4
    if-eqz v2, :cond_5

    .line 9544
    iget v2, p1, Lcom/avast/a/b/a/a$m;->f:I

    .line 7979
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$m$a;->c(I)Lcom/avast/a/b/a/a$m$a;

    .line 9558
    :cond_5
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d

    move v2, v0

    .line 7981
    :goto_5
    if-eqz v2, :cond_6

    .line 9568
    iget v2, p1, Lcom/avast/a/b/a/a$m;->g:I

    .line 7982
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$m$a;->d(I)Lcom/avast/a/b/a/a$m$a;

    .line 9582
    :cond_6
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    move v2, v0

    .line 7984
    :goto_6
    if-eqz v2, :cond_7

    .line 7985
    iget v2, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 7986
    invoke-static {p1}, Lcom/avast/a/b/a/a$m;->b(Lcom/avast/a/b/a/a$m;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$m$a;->b:Ljava/lang/Object;

    .line 9638
    :cond_7
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_f

    move v2, v0

    .line 7989
    :goto_7
    if-eqz v2, :cond_8

    .line 9649
    iget-object v2, p1, Lcom/avast/a/b/a/a$m;->h:Lcom/avast/a/b/a/a$l;

    .line 7990
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/avast/a/b/a/a$l;)Lcom/avast/a/b/a/a$m$a;

    .line 9663
    :cond_8
    iget v2, p1, Lcom/avast/a/b/a/a$m;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_10

    .line 7992
    :goto_8
    if-eqz v0, :cond_0

    .line 7993
    iget v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 7994
    invoke-static {p1}, Lcom/avast/a/b/a/a$m;->c(Lcom/avast/a/b/a/a$m;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$m$a;->c:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    move v2, v1

    .line 9462
    goto/16 :goto_1

    :cond_a
    move v2, v1

    .line 9486
    goto :goto_2

    :cond_b
    move v2, v1

    .line 9510
    goto :goto_3

    :cond_c
    move v2, v1

    .line 9534
    goto :goto_4

    :cond_d
    move v2, v1

    .line 9558
    goto :goto_5

    :cond_e
    move v2, v1

    .line 9582
    goto :goto_6

    :cond_f
    move v2, v1

    .line 9638
    goto :goto_7

    :cond_10
    move v0, v1

    .line 9663
    goto :goto_8
.end method

.method public final a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 8102
    if-nez p1, :cond_0

    .line 8103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8105
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 8106
    iput-object p1, p0, Lcom/avast/a/b/a/a$m$a;->e:Lcom/google/a/c;

    .line 8108
    return-object p0
.end method

.method public final a()Lcom/avast/a/b/a/a$m;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7928
    new-instance v2, Lcom/avast/a/b/a/a$m;

    invoke-direct {v2, v1}, Lcom/avast/a/b/a/a$m;-><init>(C)V

    .line 7929
    iget v3, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 7931
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    .line 7934
    :goto_0
    iget v1, p0, Lcom/avast/a/b/a/a$m$a;->d:I

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->a(Lcom/avast/a/b/a/a$m;I)I

    .line 7935
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 7936
    or-int/lit8 v0, v0, 0x2

    .line 7938
    :cond_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$m$a;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->a(Lcom/avast/a/b/a/a$m;Lcom/google/a/c;)Lcom/google/a/c;

    .line 7939
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 7940
    or-int/lit8 v0, v0, 0x4

    .line 7942
    :cond_1
    iget v1, p0, Lcom/avast/a/b/a/a$m$a;->f:I

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->b(Lcom/avast/a/b/a/a$m;I)I

    .line 7943
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 7944
    or-int/lit8 v0, v0, 0x8

    .line 7946
    :cond_2
    iget v1, p0, Lcom/avast/a/b/a/a$m$a;->g:I

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->c(Lcom/avast/a/b/a/a$m;I)I

    .line 7947
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 7948
    or-int/lit8 v0, v0, 0x10

    .line 7950
    :cond_3
    iget v1, p0, Lcom/avast/a/b/a/a$m$a;->h:I

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->d(Lcom/avast/a/b/a/a$m;I)I

    .line 7951
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 7952
    or-int/lit8 v0, v0, 0x20

    .line 7954
    :cond_4
    iget-object v1, p0, Lcom/avast/a/b/a/a$m$a;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->a(Lcom/avast/a/b/a/a$m;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7955
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 7956
    or-int/lit8 v0, v0, 0x40

    .line 7958
    :cond_5
    iget-object v1, p0, Lcom/avast/a/b/a/a$m$a;->i:Lcom/avast/a/b/a/a$l;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->a(Lcom/avast/a/b/a/a$m;Lcom/avast/a/b/a/a$l;)Lcom/avast/a/b/a/a$l;

    .line 7959
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    .line 7960
    or-int/lit16 v0, v0, 0x80

    .line 7962
    :cond_6
    iget-object v1, p0, Lcom/avast/a/b/a/a$m$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$m;->b(Lcom/avast/a/b/a/a$m;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7963
    invoke-static {v2, v0}, Lcom/avast/a/b/a/a$m;->e(Lcom/avast/a/b/a/a$m;I)I

    .line 7964
    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public final b(I)Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 8154
    iget v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 8155
    iput p1, p0, Lcom/avast/a/b/a/a$m$a;->f:I

    .line 8157
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 8001
    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 8203
    iget v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 8204
    iput p1, p0, Lcom/avast/a/b/a/a$m$a;->g:I

    .line 8206
    return-object p0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 7875
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m$a;->f()Lcom/avast/a/b/a/a$m$a;

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
    .line 7875
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m$a;->f()Lcom/avast/a/b/a/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/avast/a/b/a/a$m$a;
    .locals 1

    .prologue
    .line 8252
    iget v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/b/a/a$m$a;->a:I

    .line 8253
    iput p1, p0, Lcom/avast/a/b/a/a$m$a;->h:I

    .line 8255
    return-object p0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 7875
    invoke-direct {p0}, Lcom/avast/a/b/a/a$m$a;->f()Lcom/avast/a/b/a/a$m$a;

    move-result-object v0

    return-object v0
.end method
