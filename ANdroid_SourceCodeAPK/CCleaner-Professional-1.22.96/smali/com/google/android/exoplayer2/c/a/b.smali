.class public final Lcom/google/android/exoplayer2/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f;
.implements Lcom/google/android/exoplayer2/c/m;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c/i;

.field private static final e:I


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field private final f:Lcom/google/android/exoplayer2/j/k;

.field private final g:Lcom/google/android/exoplayer2/j/k;

.field private final h:Lcom/google/android/exoplayer2/j/k;

.field private final i:Lcom/google/android/exoplayer2/j/k;

.field private j:Lcom/google/android/exoplayer2/c/h;

.field private k:I

.field private l:I

.field private m:Lcom/google/android/exoplayer2/c/a/a;

.field private n:Lcom/google/android/exoplayer2/c/a/e;

.field private o:Lcom/google/android/exoplayer2/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/c/a/b$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/a/b$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/c/a/b;->a:Lcom/google/android/exoplayer2/c/i;

    .line 61
    const-string/jumbo v0, "FLV"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/a/b;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->g:Lcom/google/android/exoplayer2/j/k;

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->k:I

    .line 90
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/c/g;)Lcom/google/android/exoplayer2/j/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 267
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/b;->c:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/exoplayer2/c/a/b;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    iget v1, p0, Lcom/google/android/exoplayer2/c/a/b;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/c/a/b;->c:I

    invoke-interface {p1, v0, v3, v1}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    return-object v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->i:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/16 v9, 0x9

    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/b;->k:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1175
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->g:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v0, v2, v9, v1}, Lcom/google/android/exoplayer2/c/g;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 145
    :goto_1
    if-nez v0, :cond_0

    move v2, v3

    .line 159
    :goto_2
    return v2

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1182
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 1183
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_5

    move v4, v1

    .line 1184
    :goto_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    .line 1185
    :goto_4
    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/c/a/b;->m:Lcom/google/android/exoplayer2/c/a/a;

    if-nez v4, :cond_2

    .line 1186
    new-instance v4, Lcom/google/android/exoplayer2/c/a/a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/c/a/b;->j:Lcom/google/android/exoplayer2/c/h;

    const/16 v6, 0x8

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/c/a/b;->m:Lcom/google/android/exoplayer2/c/a/a;

    .line 1188
    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->n:Lcom/google/android/exoplayer2/c/a/e;

    if-nez v0, :cond_3

    .line 1189
    new-instance v0, Lcom/google/android/exoplayer2/c/a/e;

    iget-object v4, p0, Lcom/google/android/exoplayer2/c/a/b;->j:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v4, v9}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/c/a/e;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->n:Lcom/google/android/exoplayer2/c/a/e;

    .line 1191
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->o:Lcom/google/android/exoplayer2/c/a/c;

    if-nez v0, :cond_4

    .line 1192
    new-instance v0, Lcom/google/android/exoplayer2/c/a/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->o:Lcom/google/android/exoplayer2/c/a/c;

    .line 1194
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->j:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 1195
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->j:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 1198
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->l:I

    .line 1199
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->k:I

    move v0, v1

    .line 1200
    goto :goto_1

    :cond_5
    move v4, v2

    .line 1183
    goto :goto_3

    :cond_6
    move v0, v2

    .line 1184
    goto :goto_4

    .line 1211
    :pswitch_1
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/b;->l:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 1212
    iput v2, p0, Lcom/google/android/exoplayer2/c/a/b;->l:I

    .line 1213
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->k:I

    goto/16 :goto_0

    .line 1225
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v4, 0xb

    invoke-interface {p1, v0, v2, v4, v1}, Lcom/google/android/exoplayer2/c/g;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 153
    :goto_5
    if-nez v0, :cond_0

    move v2, v3

    .line 154
    goto/16 :goto_2

    .line 1230
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1231
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->b:I

    .line 1232
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->c:I

    .line 1233
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/a/b;->d:J

    .line 1234
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/a/b;->d:J

    or-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/a/b;->d:J

    .line 1235
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->h:Lcom/google/android/exoplayer2/j/k;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1236
    iput v8, p0, Lcom/google/android/exoplayer2/c/a/b;->k:I

    move v0, v1

    .line 1237
    goto :goto_5

    .line 1250
    :pswitch_3
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/b;->b:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->m:Lcom/google/android/exoplayer2/c/a/a;

    if-eqz v0, :cond_8

    .line 1251
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->m:Lcom/google/android/exoplayer2/c/a/a;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/a/b;->b(Lcom/google/android/exoplayer2/c/g;)Lcom/google/android/exoplayer2/j/k;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/a/b;->d:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/google/android/exoplayer2/c/a/a;->b(Lcom/google/android/exoplayer2/j/k;J)V

    move v0, v1

    .line 1260
    :goto_6
    iput v8, p0, Lcom/google/android/exoplayer2/c/a/b;->l:I

    .line 1261
    const/4 v4, 0x2

    iput v4, p0, Lcom/google/android/exoplayer2/c/a/b;->k:I

    .line 158
    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1252
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/b;->b:I

    if-ne v0, v9, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->n:Lcom/google/android/exoplayer2/c/a/e;

    if-eqz v0, :cond_9

    .line 1253
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->n:Lcom/google/android/exoplayer2/c/a/e;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/a/b;->b(Lcom/google/android/exoplayer2/c/g;)Lcom/google/android/exoplayer2/j/k;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/a/b;->d:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/google/android/exoplayer2/c/a/e;->b(Lcom/google/android/exoplayer2/j/k;J)V

    move v0, v1

    goto :goto_6

    .line 1254
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/b;->b:I

    const/16 v4, 0x12

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->o:Lcom/google/android/exoplayer2/c/a/c;

    if-eqz v0, :cond_a

    .line 1255
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->o:Lcom/google/android/exoplayer2/c/a/c;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/a/b;->b(Lcom/google/android/exoplayer2/c/g;)Lcom/google/android/exoplayer2/j/k;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/a/b;->d:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/google/android/exoplayer2/c/a/c;->b(Lcom/google/android/exoplayer2/j/k;J)V

    move v0, v1

    goto :goto_6

    .line 1257
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/b;->c:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    move v0, v2

    .line 1258
    goto :goto_6

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(J)J
    .locals 2

    .prologue
    .line 291
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a/b;->j:Lcom/google/android/exoplayer2/c/h;

    .line 126
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v1

    sget v2, Lcom/google/android/exoplayer2/c/a/b;->e:I

    if-eq v1, v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 104
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v1

    and-int/lit16 v1, v1, 0xfa

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v1, v0, v3}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 111
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v1

    .line 113
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 114
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-interface {p1, v1, v0, v3}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->k:I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/a/b;->l:I

    .line 132
    return-void
.end method

.method public final e_()J
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/b;->o:Lcom/google/android/exoplayer2/c/a/c;

    .line 2056
    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/a/c;->a:J

    .line 286
    return-wide v0
.end method
