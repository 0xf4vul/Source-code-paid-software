.class public final Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/database/DataSetObservable;

.field b:Z

.field private final c:Landroid/widget/ListAdapter;

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a:Landroid/database/DataSetObservable;

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    .line 202
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    .line 203
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->f:Z

    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->e:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->b:Z

    .line 211
    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p0, :cond_1

    .line 234
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;

    .line 235
    iget-boolean v0, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;->c:Z

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->b()I

    move-result v0

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 223
    if-gtz p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    if-eq v0, p1, :cond_1

    .line 227
    iput p1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    .line 1404
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 230
    :cond_1
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->b()I

    move-result v0

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    mul-int/2addr v0, v1

    .line 248
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->b()I

    move-result v0

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->f:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a()I

    move-result v0

    .line 279
    if-ge p1, v0, :cond_1

    .line 280
    iget v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->e:Ljava/util/List;

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;->b:Ljava/lang/Object;

    .line 289
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_1
    sub-int v0, p1, v0

    .line 288
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 299
    sub-int v0, p1, v0

    .line 300
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 304
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a()I

    move-result v0

    .line 352
    if-ge p1, v0, :cond_1

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    rem-int v1, p1, v1

    if-eqz v1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    if-lt p1, v0, :cond_2

    .line 357
    sub-int v0, p1, v0

    .line 358
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 363
    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a()I

    move-result v0

    .line 316
    if-ge p1, v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->e:Ljava/util/List;

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    div-int v1, p1, v1

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;->a:Landroid/view/ViewGroup;

    .line 319
    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    rem-int v1, p1, v1

    if-nez v1, :cond_0

    move-object p2, v0

    .line 339
    :goto_0
    return-object p2

    .line 325
    :cond_0
    if-nez p2, :cond_1

    .line 326
    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 331
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 337
    :cond_2
    sub-int v0, p1, v0

    .line 338
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 339
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 342
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a()I

    move-result v0

    .line 261
    if-ge p1, v0, :cond_1

    .line 262
    iget v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->e:Ljava/util/List;

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->d:I

    div-int v1, p1, v1

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;

    iget-boolean v0, v0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_1
    sub-int v0, p1, v0

    .line 268
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 272
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 380
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderGridView$d;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 388
    :cond_0
    return-void
.end method
