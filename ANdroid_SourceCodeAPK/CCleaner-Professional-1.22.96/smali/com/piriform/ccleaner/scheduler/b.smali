.class public final enum Lcom/piriform/ccleaner/scheduler/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/scheduler/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/scheduler/b;

.field public static final enum b:Lcom/piriform/ccleaner/scheduler/b;

.field public static final enum c:Lcom/piriform/ccleaner/scheduler/b;

.field public static final enum d:Lcom/piriform/ccleaner/scheduler/b;

.field public static final enum e:Lcom/piriform/ccleaner/scheduler/b;

.field public static final enum f:Lcom/piriform/ccleaner/scheduler/b;

.field public static final enum g:Lcom/piriform/ccleaner/scheduler/b;

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;"
        }
    .end annotation
.end field

.field static final k:Lcom/novoda/notils/a/a;

.field private static final m:Lcom/novoda/notils/a/a;

.field private static final synthetic n:[Lcom/piriform/ccleaner/scheduler/b;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 14
    new-instance v0, Lcom/piriform/ccleaner/scheduler/b;

    const-string/jumbo v1, "SUNDAY"

    invoke-direct {v0, v1, v6, v4}, Lcom/piriform/ccleaner/scheduler/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->a:Lcom/piriform/ccleaner/scheduler/b;

    .line 15
    new-instance v0, Lcom/piriform/ccleaner/scheduler/b;

    const-string/jumbo v1, "MONDAY"

    invoke-direct {v0, v1, v4, v5}, Lcom/piriform/ccleaner/scheduler/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->b:Lcom/piriform/ccleaner/scheduler/b;

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/scheduler/b;

    const-string/jumbo v1, "TUESDAY"

    invoke-direct {v0, v1, v5, v7}, Lcom/piriform/ccleaner/scheduler/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->c:Lcom/piriform/ccleaner/scheduler/b;

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/scheduler/b;

    const-string/jumbo v1, "WEDNESDAY"

    invoke-direct {v0, v1, v7, v8}, Lcom/piriform/ccleaner/scheduler/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->d:Lcom/piriform/ccleaner/scheduler/b;

    .line 18
    new-instance v0, Lcom/piriform/ccleaner/scheduler/b;

    const-string/jumbo v1, "THURSDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/piriform/ccleaner/scheduler/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->e:Lcom/piriform/ccleaner/scheduler/b;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/scheduler/b;

    const-string/jumbo v1, "FRIDAY"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/scheduler/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->f:Lcom/piriform/ccleaner/scheduler/b;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/scheduler/b;

    const-string/jumbo v1, "SATURDAY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/scheduler/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->g:Lcom/piriform/ccleaner/scheduler/b;

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/piriform/ccleaner/scheduler/b;

    sget-object v1, Lcom/piriform/ccleaner/scheduler/b;->a:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/piriform/ccleaner/scheduler/b;->b:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/piriform/ccleaner/scheduler/b;->c:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/piriform/ccleaner/scheduler/b;->d:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/piriform/ccleaner/scheduler/b;->e:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->f:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->g:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->n:[Lcom/piriform/ccleaner/scheduler/b;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/piriform/ccleaner/scheduler/b;

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->b:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v6

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->c:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->d:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v5

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->e:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v7

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->f:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/piriform/ccleaner/scheduler/b;->g:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/piriform/ccleaner/scheduler/b;->a:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v3, v1, v2

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->h:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/piriform/ccleaner/scheduler/b;

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->b:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v6

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->c:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->d:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v5

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->e:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v7

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->f:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v8

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->i:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/piriform/ccleaner/scheduler/b;

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->g:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v6

    sget-object v2, Lcom/piriform/ccleaner/scheduler/b;->a:Lcom/piriform/ccleaner/scheduler/b;

    aput-object v2, v1, v4

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->j:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/novoda/notils/a/a;

    const-string/jumbo v1, "EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/novoda/notils/a/a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->m:Lcom/novoda/notils/a/a;

    .line 34
    new-instance v0, Lcom/novoda/notils/a/a;

    const-string/jumbo v1, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/novoda/notils/a/a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/piriform/ccleaner/scheduler/b;->k:Lcom/novoda/notils/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/piriform/ccleaner/scheduler/b;->l:I

    .line 83
    return-void
.end method

.method public static a(I)Lcom/piriform/ccleaner/scheduler/b;
    .locals 5

    .prologue
    .line 57
    invoke-static {}, Lcom/piriform/ccleaner/scheduler/b;->values()[Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 58
    iget v4, v3, Lcom/piriform/ccleaner/scheduler/b;->l:I

    if-ne v4, p0, :cond_0

    .line 59
    return-object v3

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x7

    .line 37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1072
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1073
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1075
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 1067
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1068
    invoke-static {v0}, Lcom/piriform/ccleaner/scheduler/b;->a(I)Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v0

    .line 2046
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    invoke-static {}, Lcom/piriform/ccleaner/scheduler/b;->values()[Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2048
    invoke-virtual {v0}, Lcom/piriform/ccleaner/scheduler/b;->ordinal()I

    move-result v0

    .line 2050
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2051
    invoke-interface {v2, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/scheduler/b;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/piriform/ccleaner/scheduler/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/scheduler/b;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/scheduler/b;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/piriform/ccleaner/scheduler/b;->n:[Lcom/piriform/ccleaner/scheduler/b;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/scheduler/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/scheduler/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x7

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/scheduler/b;

    .line 2116
    iget v0, v0, Lcom/piriform/ccleaner/scheduler/b;->l:I

    add-int/lit8 v0, v0, 0x7

    iget v3, p0, Lcom/piriform/ccleaner/scheduler/b;->l:I

    sub-int/2addr v0, v3

    rem-int/lit8 v0, v0, 0x7

    .line 123
    if-ge v0, v1, :cond_1

    :goto_1
    move v1, v0

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/scheduler/b;->b(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/piriform/ccleaner/scheduler/b;->m:Lcom/novoda/notils/a/a;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/novoda/notils/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 140
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 141
    const/4 v1, 0x7

    iget v2, p0, Lcom/piriform/ccleaner/scheduler/b;->l:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 142
    return-object v0
.end method
