.class public final enum Lcom/piriform/ccleaner/core/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/core/h;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/String;",
        "Lcom/piriform/ccleaner/core/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/core/h;

.field public static final enum b:Lcom/piriform/ccleaner/core/h;

.field public static final enum c:Lcom/piriform/ccleaner/core/h;

.field public static final enum d:Lcom/piriform/ccleaner/core/h;

.field public static final enum e:Lcom/piriform/ccleaner/core/h;

.field private static final f:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/String;",
            "Lcom/piriform/ccleaner/core/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/text/DecimalFormat;

.field private static final synthetic j:[Lcom/piriform/ccleaner/core/h;


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 7
    new-instance v0, Lcom/piriform/ccleaner/core/h;

    const-string/jumbo v1, "BYTE"

    const/4 v2, 0x0

    const-string/jumbo v3, "B"

    const-wide/16 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/h;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    .line 8
    new-instance v0, Lcom/piriform/ccleaner/core/h;

    const-string/jumbo v1, "KILO_BYTE"

    const/4 v2, 0x1

    const-string/jumbo v3, "KB"

    const-wide/16 v4, 0x400

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/h;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/piriform/ccleaner/core/h;->b:Lcom/piriform/ccleaner/core/h;

    .line 9
    new-instance v0, Lcom/piriform/ccleaner/core/h;

    const-string/jumbo v1, "MEGA_BYTE"

    const/4 v2, 0x2

    const-string/jumbo v3, "MB"

    const-wide/32 v4, 0x100000

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/h;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    .line 10
    new-instance v0, Lcom/piriform/ccleaner/core/h;

    const-string/jumbo v1, "GIGA_BYTE"

    const/4 v2, 0x3

    const-string/jumbo v3, "GB"

    const-wide/32 v4, 0x40000000

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/h;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/piriform/ccleaner/core/h;->d:Lcom/piriform/ccleaner/core/h;

    .line 11
    new-instance v0, Lcom/piriform/ccleaner/core/h;

    const-string/jumbo v1, "TERA_BYTE"

    const/4 v2, 0x4

    const-string/jumbo v3, "TB"

    const-wide v4, 0x10000000000L

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/h;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/piriform/ccleaner/core/h;->e:Lcom/piriform/ccleaner/core/h;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/piriform/ccleaner/core/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/piriform/ccleaner/core/h;->b:Lcom/piriform/ccleaner/core/h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/piriform/ccleaner/core/h;->d:Lcom/piriform/ccleaner/core/h;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/piriform/ccleaner/core/h;->e:Lcom/piriform/ccleaner/core/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/core/h;->j:[Lcom/piriform/ccleaner/core/h;

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/core/h;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/core/h;->f:Lcom/piriform/ccleaner/core/j;

    .line 15
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,##0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/core/h;->g:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/piriform/ccleaner/core/h;->h:Ljava/lang/String;

    .line 21
    iput-wide p4, p0, Lcom/piriform/ccleaner/core/h;->i:J

    .line 22
    return-void
.end method

.method public static a(JLcom/piriform/ccleaner/core/h;)J
    .locals 8

    .prologue
    .line 25
    invoke-static {}, Lcom/piriform/ccleaner/core/h;->values()[Lcom/piriform/ccleaner/core/h;

    move-result-object v1

    .line 26
    const-wide/16 v2, 0x1

    .line 27
    array-length v4, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 28
    if-ne v5, p2, :cond_0

    .line 29
    mul-long v0, p0, v2

    .line 33
    :goto_1
    return-wide v0

    .line 31
    :cond_0
    const-wide/16 v6, 0x400

    mul-long/2addr v2, v6

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/core/h;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/piriform/ccleaner/core/h;->f:Lcom/piriform/ccleaner/core/j;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/j;->a(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/h;

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v4, 0x1

    .line 37
    .line 38
    invoke-static {}, Lcom/piriform/ccleaner/core/h;->values()[Lcom/piriform/ccleaner/core/h;

    move-result-object v1

    .line 41
    array-length v8, v1

    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    if-ge v0, v8, :cond_2

    aget-object v9, v1, v0

    .line 43
    const-wide/16 v6, 0x400

    mul-long/2addr v6, v2

    .line 44
    cmp-long v10, p0, v6

    if-gez v10, :cond_1

    .line 1053
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    long-to-double v0, p0

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 1054
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/piriform/ccleaner/core/h;->g:Ljava/text/DecimalFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/piriform/ccleaner/core/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_2
    return-object v0

    .line 1053
    :cond_0
    long-to-double v0, p0

    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-wide v2, v6

    goto :goto_0

    .line 49
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/core/h;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/piriform/ccleaner/core/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/h;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/core/h;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/piriform/ccleaner/core/h;->j:[Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/core/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/core/h;

    return-object v0
.end method


# virtual methods
.method public final b(JLcom/piriform/ccleaner/core/h;)J
    .locals 5

    .prologue
    .line 91
    .line 2082
    iget-wide v0, p3, Lcom/piriform/ccleaner/core/h;->i:J

    .line 1087
    mul-long/2addr v0, p1

    .line 3082
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/h;->i:J

    .line 1087
    div-long/2addr v0, v2

    .line 91
    return-wide v0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    .line 4073
    iget-object v0, p0, Lcom/piriform/ccleaner/core/h;->h:Ljava/lang/String;

    .line 6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/core/h;->h:Ljava/lang/String;

    return-object v0
.end method
