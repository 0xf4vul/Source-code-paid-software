.class public abstract enum Lcom/google/android/gms/internal/nn;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/no;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/nn;",
        ">;",
        "Lcom/google/android/gms/internal/no;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/nn;

.field public static final enum b:Lcom/google/android/gms/internal/nn;

.field public static final enum c:Lcom/google/android/gms/internal/nn;

.field public static final enum d:Lcom/google/android/gms/internal/nn;

.field public static final enum e:Lcom/google/android/gms/internal/nn;

.field private static final synthetic f:[Lcom/google/android/gms/internal/nn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/nn$1;

    const-string/jumbo v1, "IDENTITY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nn$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/nn;->a:Lcom/google/android/gms/internal/nn;

    new-instance v0, Lcom/google/android/gms/internal/nn$2;

    const-string/jumbo v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nn$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/nn;->b:Lcom/google/android/gms/internal/nn;

    new-instance v0, Lcom/google/android/gms/internal/nn$3;

    const-string/jumbo v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nn$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/nn;->c:Lcom/google/android/gms/internal/nn;

    new-instance v0, Lcom/google/android/gms/internal/nn$4;

    const-string/jumbo v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nn$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/nn;->d:Lcom/google/android/gms/internal/nn;

    new-instance v0, Lcom/google/android/gms/internal/nn$5;

    const-string/jumbo v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nn$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/nn;->e:Lcom/google/android/gms/internal/nn;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/nn;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/nn;->a:Lcom/google/android/gms/internal/nn;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/nn;->b:Lcom/google/android/gms/internal/nn;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/nn;->c:Lcom/google/android/gms/internal/nn;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/gms/internal/nn;->d:Lcom/google/android/gms/internal/nn;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/gms/internal/nn;->e:Lcom/google/android/gms/internal/nn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/nn;->f:[Lcom/google/android/gms/internal/nn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 2000
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2000
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/nn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/nn;->f:[Lcom/google/android/gms/internal/nn;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/nn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/nn;

    return-object v0
.end method
