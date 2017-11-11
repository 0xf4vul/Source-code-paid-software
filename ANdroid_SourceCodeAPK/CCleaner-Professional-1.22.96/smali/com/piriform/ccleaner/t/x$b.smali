.class public final enum Lcom/piriform/ccleaner/t/x$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/t/x$b;",
        ">;",
        "Lcom/piriform/ccleaner/core/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/piriform/ccleaner/t/x$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum b:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum c:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum d:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum e:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum f:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum g:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum h:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum i:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum j:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum k:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum l:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum m:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum n:Lcom/piriform/ccleaner/t/x$b;

.field public static final enum o:Lcom/piriform/ccleaner/t/x$b;

.field private static final t:Lcom/piriform/ccleaner/core/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/core/j",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic v:[Lcom/piriform/ccleaner/t/x$b;


# instance fields
.field public final p:I

.field final q:I

.field public final r:Z

.field public final s:Z

.field private final u:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 19
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "CPU_TOTAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0e0061

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIB)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->a:Lcom/piriform/ccleaner/t/x$b;

    .line 20
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "CPU_SYSTEM"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f08008d

    const v5, 0x7f0e00a1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIZZ)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->b:Lcom/piriform/ccleaner/t/x$b;

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "CPU_USER"

    const/4 v2, 0x2

    const/4 v3, 0x2

    const v4, 0x7f08008e

    const v5, 0x7f0e00a2

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIZZ)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->c:Lcom/piriform/ccleaner/t/x$b;

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "CPU_IDLE"

    const/4 v2, 0x3

    const/4 v3, 0x3

    const v4, 0x7f08008c

    const v5, 0x7f0e0061

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIZZ)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->d:Lcom/piriform/ccleaner/t/x$b;

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "MEMORY_USED"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const v4, 0x7f0800c8

    const v5, 0x7f0e00a4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->e:Lcom/piriform/ccleaner/t/x$b;

    .line 24
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "MEMORY_FREE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x7f0800c6

    const v5, 0x7f0e0061

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->f:Lcom/piriform/ccleaner/t/x$b;

    .line 25
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "MEMORY_TOTAL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const v4, 0x7f0800c7

    const v5, 0x7f0e0061

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIB)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->g:Lcom/piriform/ccleaner/t/x$b;

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "BATTERY_LEVEL_USED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const v4, 0x7f080073

    const v5, 0x7f0e0061

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIB)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->h:Lcom/piriform/ccleaner/t/x$b;

    .line 27
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "BATTERY_LEVEL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const v4, 0x7f080072

    const v5, 0x7f0e00a0

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->i:Lcom/piriform/ccleaner/t/x$b;

    .line 28
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "BATTERY_LEVEL_TOTAL"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x7f0e0061

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIB)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->j:Lcom/piriform/ccleaner/t/x$b;

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "BATTERY_TEMP"

    const/16 v2, 0xa

    const/16 v3, 0x9

    const v4, 0x7f080074

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->k:Lcom/piriform/ccleaner/t/x$b;

    .line 30
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "BATTERY_VOLTAGE"

    const/16 v2, 0xb

    const/16 v3, 0xa

    const v4, 0x7f080075

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIB)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->l:Lcom/piriform/ccleaner/t/x$b;

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "SPACE_USED"

    const/16 v2, 0xc

    const/16 v3, 0xb

    const v4, 0x7f080123

    const v5, 0x7f0e00a3

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->m:Lcom/piriform/ccleaner/t/x$b;

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "SPACE_FREE"

    const/16 v2, 0xd

    const/16 v3, 0xc

    const v4, 0x7f080121

    const v5, 0x7f0e0061

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->n:Lcom/piriform/ccleaner/t/x$b;

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/t/x$b;

    const-string/jumbo v1, "SPACE_TOTAL"

    const/16 v2, 0xe

    const/16 v3, 0xd

    const v4, 0x7f080122

    const v5, 0x7f0e0061

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIB)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->o:Lcom/piriform/ccleaner/t/x$b;

    .line 17
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/piriform/ccleaner/t/x$b;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->a:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->b:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->c:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->d:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->e:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->f:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->g:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->h:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->i:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->j:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->k:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->l:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->m:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->n:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->o:Lcom/piriform/ccleaner/t/x$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->v:[Lcom/piriform/ccleaner/t/x$b;

    .line 35
    new-instance v0, Lcom/piriform/ccleaner/core/j;

    const-class v1, Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/core/j;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/piriform/ccleaner/t/x$b;->t:Lcom/piriform/ccleaner/core/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIZZ)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIB)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZBB)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/t/x$b;-><init>(Ljava/lang/String;IIIIZZ)V

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/piriform/ccleaner/t/x$b;->u:I

    .line 55
    iput p4, p0, Lcom/piriform/ccleaner/t/x$b;->p:I

    .line 56
    iput p5, p0, Lcom/piriform/ccleaner/t/x$b;->q:I

    .line 57
    iput-boolean p6, p0, Lcom/piriform/ccleaner/t/x$b;->r:Z

    .line 58
    iput-boolean p7, p0, Lcom/piriform/ccleaner/t/x$b;->s:Z

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/t/x$b;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/piriform/ccleaner/t/x$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/x$b;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/t/x$b;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/piriform/ccleaner/t/x$b;->v:[Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/t/x$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/t/x$b;

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .line 1063
    iget v0, p0, Lcom/piriform/ccleaner/t/x$b;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    return-object v0
.end method
