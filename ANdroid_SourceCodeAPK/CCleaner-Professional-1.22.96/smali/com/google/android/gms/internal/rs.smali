.class public final Lcom/google/android/gms/internal/rs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rs$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/rm;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Z

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/rs;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/rs;->e:Z

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/rs;->f:I

    :goto_0
    if-gtz p3, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/rs;->g:I

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/rr;

    iget v1, p0, Lcom/google/android/gms/internal/rs;->f:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/rr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rs;->a:Lcom/google/android/gms/internal/rm;

    return-void

    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/rs;->f:I

    goto :goto_0

    :cond_2
    iput p3, p0, Lcom/google/android/gms/internal/rs;->g:I

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 0
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_0

    aget-object v5, v6, v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    .line 1000
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, v3

    move v4, v1

    :goto_2
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gt v8, v9, :cond_6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_5

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v8, 0x73

    if-eq v4, v8, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v8, 0x53

    if-ne v4, v8, :cond_5

    :cond_2
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eq v4, v8, :cond_3

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_5

    :cond_3
    invoke-virtual {v7, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    :goto_3
    move v4, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v2, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 0
    :goto_4
    if-eqz v2, :cond_f

    iput-object v2, p0, Lcom/google/android/gms/internal/rs;->d:Ljava/lang/String;

    :goto_5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ro;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    array-length v2, v7

    iget v4, p0, Lcom/google/android/gms/internal/rs;->g:I

    if-lt v2, v4, :cond_d

    move v2, v1

    :goto_6
    array-length v4, v7

    if-ge v2, v4, :cond_c

    const-string/jumbo v4, ""

    move v5, v1

    :goto_7
    iget v8, p0, Lcom/google/android/gms/internal/rs;->g:I

    if-ge v5, v8, :cond_e

    add-int v8, v2, v5

    array-length v9, v7

    if-lt v8, v9, :cond_8

    move v5, v1

    :goto_8
    if-eqz v5, :cond_c

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/internal/rs;->b:I

    if-lt v4, v5, :cond_b

    move v3, v1

    goto/16 :goto_0

    .line 1000
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 0
    :cond_8
    if-lez v5, :cond_9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    add-int v4, v2, v5

    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/rs;->b:I

    if-lt v2, v4, :cond_d

    move v3, v1

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_e
    move v5, v3

    goto :goto_8

    :cond_f
    move-object v2, v5

    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/rl;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/rs$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rs$a;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rl;

    .line 2000
    iget v0, v0, Lcom/google/android/gms/internal/rl;->e:I

    .line 0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/rs;->a(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/rn$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/rn$a;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/rs;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/rs;->a:Lcom/google/android/gms/internal/rm;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/rm;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/rn$a;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Error while writing hash to byteStream"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/rn$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
