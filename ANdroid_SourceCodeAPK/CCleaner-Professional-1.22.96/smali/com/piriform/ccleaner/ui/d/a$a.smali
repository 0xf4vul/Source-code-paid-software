.class public final enum Lcom/piriform/ccleaner/ui/d/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/ui/d/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/ui/d/a$a;

.field public static final enum b:Lcom/piriform/ccleaner/ui/d/a$a;

.field private static final synthetic f:[Lcom/piriform/ccleaner/ui/d/a$a;


# instance fields
.field private final c:Lcom/piriform/ccleaner/cleaning/g;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/piriform/ccleaner/ui/d/a$a;

    const-string/jumbo v1, "QUICK_CLEAN"

    sget-object v3, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    const v4, 0x7f080208

    const v5, 0x7f080207

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/ui/d/a$a;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/cleaning/g;II)V

    sput-object v0, Lcom/piriform/ccleaner/ui/d/a$a;->a:Lcom/piriform/ccleaner/ui/d/a$a;

    .line 79
    new-instance v3, Lcom/piriform/ccleaner/ui/d/a$a;

    const-string/jumbo v4, "SCHEDULED_CLEAN"

    sget-object v6, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    const v7, 0x7f080254

    const v8, 0x7f080253

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/piriform/ccleaner/ui/d/a$a;-><init>(Ljava/lang/String;ILcom/piriform/ccleaner/cleaning/g;II)V

    sput-object v3, Lcom/piriform/ccleaner/ui/d/a$a;->b:Lcom/piriform/ccleaner/ui/d/a$a;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/piriform/ccleaner/ui/d/a$a;

    sget-object v1, Lcom/piriform/ccleaner/ui/d/a$a;->a:Lcom/piriform/ccleaner/ui/d/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/ui/d/a$a;->b:Lcom/piriform/ccleaner/ui/d/a$a;

    aput-object v1, v0, v9

    sput-object v0, Lcom/piriform/ccleaner/ui/d/a$a;->f:[Lcom/piriform/ccleaner/ui/d/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/piriform/ccleaner/cleaning/g;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/g;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/d/a$a;->c:Lcom/piriform/ccleaner/cleaning/g;

    .line 83
    iput p4, p0, Lcom/piriform/ccleaner/ui/d/a$a;->d:I

    .line 84
    iput p5, p0, Lcom/piriform/ccleaner/ui/d/a$a;->e:I

    .line 85
    return-void
.end method

.method public static synthetic a(Lcom/piriform/ccleaner/ui/d/a$a;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/piriform/ccleaner/ui/d/a$a;->d:I

    return v0
.end method

.method public static synthetic a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/ui/d/a$a;
    .locals 5

    .prologue
    .line 1088
    invoke-static {}, Lcom/piriform/ccleaner/ui/d/a$a;->values()[Lcom/piriform/ccleaner/ui/d/a$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1089
    iget-object v4, v0, Lcom/piriform/ccleaner/ui/d/a$a;->c:Lcom/piriform/ccleaner/cleaning/g;

    if-ne v4, p0, :cond_0

    .line 1090
    :goto_1
    return-object v0

    .line 1088
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1093
    :cond_1
    const/4 v0, 0x0

    .line 77
    goto :goto_1
.end method

.method public static synthetic b(Lcom/piriform/ccleaner/ui/d/a$a;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/piriform/ccleaner/ui/d/a$a;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/d/a$a;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/piriform/ccleaner/ui/d/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/d/a$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/ui/d/a$a;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/piriform/ccleaner/ui/d/a$a;->f:[Lcom/piriform/ccleaner/ui/d/a$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/ui/d/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/ui/d/a$a;

    return-object v0
.end method
