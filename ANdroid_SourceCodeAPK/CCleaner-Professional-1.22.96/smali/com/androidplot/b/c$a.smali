.class final Lcom/androidplot/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/androidplot/b/c;

.field private e:Z

.field private f:Lcom/androidplot/b/c;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/androidplot/b/c;Lcom/androidplot/b/c;Landroid/graphics/RectF;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    .line 197
    iput-object p1, p0, Lcom/androidplot/b/c$a;->d:Lcom/androidplot/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean v1, p0, Lcom/androidplot/b/c$a;->e:Z

    .line 184
    iput v0, p0, Lcom/androidplot/b/c$a;->a:I

    .line 185
    iput v0, p0, Lcom/androidplot/b/c$a;->b:I

    .line 186
    iput v0, p0, Lcom/androidplot/b/c$a;->c:I

    .line 198
    iput-object p2, p0, Lcom/androidplot/b/c$a;->f:Lcom/androidplot/b/c;

    .line 199
    iput-object p3, p0, Lcom/androidplot/b/c$a;->g:Landroid/graphics/RectF;

    .line 200
    iput p4, p0, Lcom/androidplot/b/c$a;->i:I

    .line 1035
    iget v0, p2, Lcom/androidplot/b/n;->c:I

    .line 201
    iput v0, p0, Lcom/androidplot/b/c$a;->j:I

    .line 1159
    iget v0, p2, Lcom/androidplot/b/c;->b:I

    .line 204
    if-nez v0, :cond_0

    .line 2151
    iget v0, p2, Lcom/androidplot/b/c;->a:I

    .line 204
    if-lez v0, :cond_0

    .line 3151
    iget v0, p2, Lcom/androidplot/b/c;->a:I

    .line 205
    iput v0, p0, Lcom/androidplot/b/c$a;->l:I

    .line 208
    new-instance v0, Ljava/lang/Float;

    int-to-float v1, p4

    iget v2, p0, Lcom/androidplot/b/c$a;->l:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/b/c$a;->m:I

    .line 222
    :goto_0
    iget v0, p0, Lcom/androidplot/b/c$a;->l:I

    iget v1, p0, Lcom/androidplot/b/c$a;->m:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/androidplot/b/c$a;->k:I

    .line 9103
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9104
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 9105
    iget v1, p3, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 9107
    iget v1, p3, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/androidplot/b/n$a;->a:I

    invoke-virtual {p2, p3, v2, p4}, Lcom/androidplot/b/c;->a(Landroid/graphics/RectF;II)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 9109
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sget v2, Lcom/androidplot/b/n$a;->b:I

    invoke-virtual {p2, p3, v2, p4}, Lcom/androidplot/b/c;->a(Landroid/graphics/RectF;II)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 223
    iput-object v0, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    .line 224
    return-void

    .line 4151
    :cond_0
    iget v0, p2, Lcom/androidplot/b/c;->a:I

    .line 209
    if-nez v0, :cond_1

    .line 4159
    iget v0, p2, Lcom/androidplot/b/c;->b:I

    .line 209
    if-lez v0, :cond_1

    .line 5159
    iget v0, p2, Lcom/androidplot/b/c;->b:I

    .line 211
    iput v0, p0, Lcom/androidplot/b/c$a;->m:I

    .line 212
    new-instance v0, Ljava/lang/Float;

    int-to-float v1, p4

    iget v2, p0, Lcom/androidplot/b/c$a;->m:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/b/c$a;->l:I

    goto :goto_0

    .line 6159
    :cond_1
    iget v0, p2, Lcom/androidplot/b/c;->b:I

    .line 214
    if-nez v0, :cond_2

    .line 7151
    iget v0, p2, Lcom/androidplot/b/c;->a:I

    .line 214
    if-nez v0, :cond_2

    .line 215
    iput v1, p0, Lcom/androidplot/b/c$a;->l:I

    .line 216
    iput p4, p0, Lcom/androidplot/b/c$a;->m:I

    goto :goto_0

    .line 8151
    :cond_2
    iget v0, p2, Lcom/androidplot/b/c;->a:I

    .line 219
    iput v0, p0, Lcom/androidplot/b/c$a;->l:I

    .line 8159
    iget v0, p2, Lcom/androidplot/b/c;->b:I

    .line 220
    iput v0, p0, Lcom/androidplot/b/c$a;->m:I

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/androidplot/b/c$a;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidplot/b/c$a;->c:I

    iget v1, p0, Lcom/androidplot/b/c$a;->k:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    .line 9233
    invoke-virtual {p0}, Lcom/androidplot/b/c$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9234
    iput-boolean v3, p0, Lcom/androidplot/b/c$a;->e:Z

    .line 9235
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 9238
    :cond_0
    iget v0, p0, Lcom/androidplot/b/c$a;->c:I

    if-nez v0, :cond_1

    .line 9239
    iget v0, p0, Lcom/androidplot/b/c$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/androidplot/b/c$a;->c:I

    .line 9240
    iget-object v0, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    :goto_0
    return-object v0

    .line 9243
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 9245
    sget-object v1, Lcom/androidplot/b/c$1;->b:[I

    iget v2, p0, Lcom/androidplot/b/c$a;->j:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 9272
    iput-boolean v3, p0, Lcom/androidplot/b/c$a;->e:Z

    .line 9273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 9247
    :pswitch_0
    iget-object v1, p0, Lcom/androidplot/b/c$a;->f:Lcom/androidplot/b/c;

    .line 10159
    iget v1, v1, Lcom/androidplot/b/c;->b:I

    .line 9247
    if-lez v1, :cond_2

    iget v1, p0, Lcom/androidplot/b/c$a;->a:I

    iget-object v2, p0, Lcom/androidplot/b/c$a;->f:Lcom/androidplot/b/c;

    .line 11159
    iget v2, v2, Lcom/androidplot/b/c;->b:I

    .line 9247
    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    .line 9249
    iget-object v1, p0, Lcom/androidplot/b/c$a;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 9250
    iput v3, p0, Lcom/androidplot/b/c$a;->a:I

    .line 9251
    iget v1, p0, Lcom/androidplot/b/c$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/b/c$a;->b:I

    .line 9275
    :goto_1
    iget v1, p0, Lcom/androidplot/b/c$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/b/c$a;->c:I

    .line 9276
    iput-object v0, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    goto :goto_0

    .line 9254
    :cond_2
    iget-object v1, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 9255
    iget v1, p0, Lcom/androidplot/b/c$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/b/c$a;->a:I

    goto :goto_1

    .line 9259
    :pswitch_1
    iget-object v1, p0, Lcom/androidplot/b/c$a;->f:Lcom/androidplot/b/c;

    .line 12151
    iget v1, v1, Lcom/androidplot/b/c;->a:I

    .line 9259
    if-lez v1, :cond_3

    iget v1, p0, Lcom/androidplot/b/c$a;->b:I

    iget-object v2, p0, Lcom/androidplot/b/c$a;->f:Lcom/androidplot/b/c;

    .line 13151
    iget v2, v2, Lcom/androidplot/b/c;->a:I

    .line 9259
    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    .line 9261
    iget-object v1, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/b/c$a;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 9262
    iput v3, p0, Lcom/androidplot/b/c$a;->b:I

    .line 9263
    iget v1, p0, Lcom/androidplot/b/c$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/b/c$a;->a:I

    goto :goto_1

    .line 9266
    :cond_3
    iget-object v1, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/b/c$a;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 9267
    iget v1, p0, Lcom/androidplot/b/c$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/b/c$a;->b:I

    goto :goto_1

    .line 9245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
