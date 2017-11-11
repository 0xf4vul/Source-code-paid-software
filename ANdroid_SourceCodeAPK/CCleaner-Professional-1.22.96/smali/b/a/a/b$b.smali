.class final Lb/a/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:[Ljava/lang/String;

.field private final c:I

.field private final d:Lb/a/a/b$e;

.field private final e:Lb/a/a/b$d;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    sput v0, Lb/a/a/b$b;->a:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILb/a/a/b$e;)V
    .locals 5

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lb/a/a/b$b;->b:[Ljava/lang/String;

    .line 606
    iput p2, p0, Lb/a/a/b$b;->c:I

    .line 607
    iput-object p3, p0, Lb/a/a/b$b;->d:Lb/a/a/b$e;

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b$b;->e:Lb/a/a/b$d;

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lb/a/a/b$b;->a:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lb/a/a/b$b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b$b;->f:Ljava/lang/String;

    .line 610
    return-void
.end method

.method static synthetic a(Lb/a/a/b$b;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lb/a/a/b$b;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lb/a/a/b$b;)Lb/a/a/b$e;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lb/a/a/b$b;->d:Lb/a/a/b$e;

    return-object v0
.end method

.method static synthetic c(Lb/a/a/b$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lb/a/a/b$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lb/a/a/b$b;)Lb/a/a/b$d;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lb/a/a/b$b;->e:Lb/a/a/b$d;

    return-object v0
.end method

.method static synthetic e(Lb/a/a/b$b;)I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lb/a/a/b$b;->c:I

    return v0
.end method
