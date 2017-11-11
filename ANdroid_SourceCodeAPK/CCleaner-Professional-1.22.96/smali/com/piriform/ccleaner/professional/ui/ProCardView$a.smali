.class public enum Lcom/piriform/ccleaner/professional/ui/ProCardView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/ui/ProCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/professional/ui/ProCardView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

.field public static final enum b:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

.field public static final enum c:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

.field public static final enum d:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

.field public static final enum e:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

.field private static final synthetic k:[Lcom/piriform/ccleaner/professional/ui/ProCardView$a;


# instance fields
.field f:Z

.field g:Z

.field private final h:I

.field private final i:I

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    const-string/jumbo v1, "CHECKING"

    const v3, 0x7f080147

    move v4, v2

    move v6, v5

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;-><init>(Ljava/lang/String;IIIZZZ)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    .line 195
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a$1;

    const-string/jumbo v1, "RETRY"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->b:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    .line 201
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a$2;

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->c:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    .line 207
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a$3;

    const-string/jumbo v1, "CAN_UPGRADE"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->d:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    .line 213
    new-instance v6, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    const-string/jumbo v7, "UPGRADED"

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v2

    invoke-direct/range {v6 .. v13}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;-><init>(Ljava/lang/String;IIIZZZ)V

    sput-object v6, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->e:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    .line 193
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    sget-object v1, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->b:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->c:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->d:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->e:Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    aput-object v1, v0, v8

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->k:[Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 8

    .prologue
    .line 193
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;-><init>(Ljava/lang/String;IIIZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZ)V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput p3, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->h:I

    .line 229
    iput p4, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->i:I

    .line 230
    iput-boolean p5, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->j:Z

    .line 231
    iput-boolean p6, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->f:Z

    .line 232
    iput-boolean p7, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->g:Z

    .line 233
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)I
    .locals 1

    .prologue
    .line 193
    .line 1244
    iget v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->h:I

    .line 193
    return v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)I
    .locals 1

    .prologue
    .line 193
    .line 1248
    iget v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->i:I

    .line 193
    return v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/professional/ui/ProCardView$a;)Z
    .locals 1

    .prologue
    .line 193
    .line 1252
    iget-boolean v0, p0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->j:Z

    .line 193
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/professional/ui/ProCardView$a;
    .locals 1

    .prologue
    .line 193
    const-class v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/professional/ui/ProCardView$a;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->k:[Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/professional/ui/ProCardView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/professional/ui/ProCardView$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/piriform/ccleaner/professional/ui/b$a;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method
