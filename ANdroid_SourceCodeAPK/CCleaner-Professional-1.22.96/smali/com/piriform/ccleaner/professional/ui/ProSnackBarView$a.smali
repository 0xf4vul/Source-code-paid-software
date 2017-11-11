.class public enum Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/ui/ProSnackBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

.field public static final enum b:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

.field public static final enum c:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

.field public static final enum d:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

.field public static final enum e:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

.field private static final synthetic k:[Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;


# instance fields
.field f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    const-string/jumbo v1, "CHECKING"

    const v3, 0x7f080147

    const v5, 0x7f0e0092

    move v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;-><init>(Ljava/lang/String;IIIIZZ)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    .line 137
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a$1;

    const-string/jumbo v1, "RETRY"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->b:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    .line 143
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a$2;

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->c:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    .line 149
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a$3;

    const-string/jumbo v1, "CAN_UPGRADE"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->d:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    .line 155
    new-instance v7, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    const-string/jumbo v8, "UPGRADED"

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v2

    move v14, v2

    invoke-direct/range {v7 .. v14}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;-><init>(Ljava/lang/String;IIIIZZ)V

    sput-object v7, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->e:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    sget-object v1, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->a:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->b:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->c:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->d:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->e:Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    aput-object v1, v0, v9

    sput-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->k:[Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIII)V
    .locals 8

    .prologue
    .line 135
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;-><init>(Ljava/lang/String;IIIIZZ)V

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
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->g:I

    .line 165
    iput p4, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->h:I

    .line 166
    iput p5, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->i:I

    .line 167
    iput-boolean p6, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->j:Z

    .line 168
    iput-boolean p7, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->f:Z

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)I
    .locals 1

    .prologue
    .line 135
    .line 1172
    iget v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->g:I

    .line 135
    return v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)I
    .locals 1

    .prologue
    .line 135
    .line 1176
    iget v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->h:I

    .line 135
    return v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)I
    .locals 1

    .prologue
    .line 135
    .line 1180
    iget v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->i:I

    .line 135
    return v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;)Z
    .locals 1

    .prologue
    .line 135
    .line 1184
    iget-boolean v0, p0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->j:Z

    .line 135
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->k:[Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/professional/ui/ProSnackBarView$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/piriform/ccleaner/professional/ui/b$a;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
